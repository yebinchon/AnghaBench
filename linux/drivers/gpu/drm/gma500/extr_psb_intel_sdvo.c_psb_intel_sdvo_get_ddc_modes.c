
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psb_intel_sdvo_connector {int dummy; } ;
struct edid {int input; } ;
struct drm_connector {int dummy; } ;


 int DRM_EDID_INPUT_DIGITAL ;
 int IS_TMDS (struct psb_intel_sdvo_connector*) ;
 int drm_add_edid_modes (struct drm_connector*,struct edid*) ;
 int drm_connector_update_edid_property (struct drm_connector*,struct edid*) ;
 int kfree (struct edid*) ;
 struct edid* psb_intel_sdvo_get_analog_edid (struct drm_connector*) ;
 struct edid* psb_intel_sdvo_get_edid (struct drm_connector*) ;
 struct psb_intel_sdvo_connector* to_psb_intel_sdvo_connector (struct drm_connector*) ;

__attribute__((used)) static void psb_intel_sdvo_get_ddc_modes(struct drm_connector *connector)
{
 struct edid *edid;


 edid = psb_intel_sdvo_get_edid(connector);







 if (edid == ((void*)0))
  edid = psb_intel_sdvo_get_analog_edid(connector);

 if (edid != ((void*)0)) {
  struct psb_intel_sdvo_connector *psb_intel_sdvo_connector = to_psb_intel_sdvo_connector(connector);
  bool monitor_is_digital = !!(edid->input & DRM_EDID_INPUT_DIGITAL);
  bool connector_is_digital = !!IS_TMDS(psb_intel_sdvo_connector);

  if (connector_is_digital == monitor_is_digital) {
   drm_connector_update_edid_property(connector, edid);
   drm_add_edid_modes(connector, edid);
  }

  kfree(edid);
 }
}
