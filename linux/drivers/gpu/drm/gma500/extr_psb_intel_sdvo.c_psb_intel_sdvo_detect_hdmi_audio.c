
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psb_intel_sdvo {int is_hdmi; } ;
struct edid {int input; } ;
struct drm_connector {int dummy; } ;


 int DRM_EDID_INPUT_DIGITAL ;
 int drm_detect_monitor_audio (struct edid*) ;
 struct psb_intel_sdvo* intel_attached_sdvo (struct drm_connector*) ;
 struct edid* psb_intel_sdvo_get_edid (struct drm_connector*) ;

__attribute__((used)) static bool psb_intel_sdvo_detect_hdmi_audio(struct drm_connector *connector)
{
 struct psb_intel_sdvo *psb_intel_sdvo = intel_attached_sdvo(connector);
 struct edid *edid;
 bool has_audio = 0;

 if (!psb_intel_sdvo->is_hdmi)
  return 0;

 edid = psb_intel_sdvo_get_edid(connector);
 if (edid != ((void*)0) && edid->input & DRM_EDID_INPUT_DIGITAL)
  has_audio = drm_detect_monitor_audio(edid);

 return has_audio;
}
