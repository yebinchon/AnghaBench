
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct psb_intel_sdvo_connector {scalar_t__ force_audio; } ;
struct psb_intel_sdvo {int ddc_bus; int has_hdmi_audio; int has_hdmi_monitor; scalar_t__ is_hdmi; } ;
struct edid {int input; } ;
struct drm_connector {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int DRM_EDID_INPUT_DIGITAL ;
 int connector_status_connected ;
 int connector_status_disconnected ;
 int connector_status_unknown ;
 int drm_detect_hdmi_monitor (struct edid*) ;
 int drm_detect_monitor_audio (struct edid*) ;
 struct psb_intel_sdvo* intel_attached_sdvo (struct drm_connector*) ;
 int kfree (struct edid*) ;
 struct edid* psb_intel_sdvo_get_analog_edid (struct drm_connector*) ;
 struct edid* psb_intel_sdvo_get_edid (struct drm_connector*) ;
 scalar_t__ psb_intel_sdvo_multifunc_encoder (struct psb_intel_sdvo*) ;
 struct psb_intel_sdvo_connector* to_psb_intel_sdvo_connector (struct drm_connector*) ;

__attribute__((used)) static enum drm_connector_status
psb_intel_sdvo_hdmi_sink_detect(struct drm_connector *connector)
{
 struct psb_intel_sdvo *psb_intel_sdvo = intel_attached_sdvo(connector);
 enum drm_connector_status status;
 struct edid *edid;

 edid = psb_intel_sdvo_get_edid(connector);

 if (edid == ((void*)0) && psb_intel_sdvo_multifunc_encoder(psb_intel_sdvo)) {
  u8 ddc, saved_ddc = psb_intel_sdvo->ddc_bus;





  for (ddc = psb_intel_sdvo->ddc_bus >> 1; ddc > 1; ddc >>= 1) {
   psb_intel_sdvo->ddc_bus = ddc;
   edid = psb_intel_sdvo_get_edid(connector);
   if (edid)
    break;
  }




  if (edid == ((void*)0))
   psb_intel_sdvo->ddc_bus = saved_ddc;
 }





 if (edid == ((void*)0))
  edid = psb_intel_sdvo_get_analog_edid(connector);

 status = connector_status_unknown;
 if (edid != ((void*)0)) {

  if (edid->input & DRM_EDID_INPUT_DIGITAL) {
   status = connector_status_connected;
   if (psb_intel_sdvo->is_hdmi) {
    psb_intel_sdvo->has_hdmi_monitor = drm_detect_hdmi_monitor(edid);
    psb_intel_sdvo->has_hdmi_audio = drm_detect_monitor_audio(edid);
   }
  } else
   status = connector_status_disconnected;
  kfree(edid);
 }

 if (status == connector_status_connected) {
  struct psb_intel_sdvo_connector *psb_intel_sdvo_connector = to_psb_intel_sdvo_connector(connector);
  if (psb_intel_sdvo_connector->force_audio)
   psb_intel_sdvo->has_hdmi_audio = psb_intel_sdvo_connector->force_audio > 0;
 }

 return status;
}
