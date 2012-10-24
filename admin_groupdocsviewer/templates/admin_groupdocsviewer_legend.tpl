{literal}
<script>

$(document).ready(function(){
		// add interface
        $('#textarea-1').before('<div style="border:1px solid #bcbcbc;margin-bottom:7px;background-color:#CDE1F4;"><table><tr><td>Viewer:</td><td><input type="button" style="color:#003366;font-weight:bold;" value="Insert GroupDocs File ID" onclick="insertGroupDocs();"></td><td>Width:<input id="iwidth" type="text" style="width:50px;" value="600"/></td><td>Height:<input id="iheight" type="text" style="width:50px" value="700"/></td><td>File ID:<input id="ifileid" type="text" style="width:350px" value=""/></td></tr></table></div>');
});

// Insert GroupDocs file
function insertGroupDocs() {
    
	var iwidth = $('#iwidth').val();
	var iheight = $('#iheight').val();
	var ifileid = $('#ifileid').val();

    if(ifileid.length<50) { alert('Sorry, but File ID is too short or empty'); return false; }
    if(parseInt(iwidth)<10) { alert('Sorry, but Width is too small'); return false; }
	if(parseInt(iheight)<10) { alert('Sorry, but Height is too small'); return false; }

    // all good continue
    var iframe = '<iframe src="https://apps.groupdocs.com/document-viewer/embed/'+ifileid+'" frameborder="0" width="'+iwidth+'" height="'+iheight+'"></iframe>';

	// place iframe in content
	var tinyMceContent = tinyMCE.activeEditor.getContent();
	if(tinyMceContent!="undefined" || tinyMceContent.length>0){
		// set content
		tinyMCE.activeEditor.setContent(tinyMceContent+iframe);
	}else{
	    // insert in content just after text if no TinyMCE
		var cont = $('#textarea-1').html();
		iframe = cont + '<br>' + iframe;
		$('#textarea-1').html(iframe);
	}

}
//
</script>
{/literal}
