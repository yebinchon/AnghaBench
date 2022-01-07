
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gma_encoder {struct cdv_intel_dp* dev_priv; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;
struct cdv_intel_dp {int adapter; } ;


 int cdv_intel_edp_panel_vdd_off (struct gma_encoder*) ;
 int cdv_intel_edp_panel_vdd_on (struct gma_encoder*) ;
 int drm_detect_monitor_audio (struct edid*) ;
 struct edid* drm_get_edid (struct drm_connector*,int *) ;
 struct gma_encoder* gma_attached_encoder (struct drm_connector*) ;
 int is_edp (struct gma_encoder*) ;
 int kfree (struct edid*) ;

__attribute__((used)) static bool
cdv_intel_dp_detect_audio(struct drm_connector *connector)
{
 struct gma_encoder *encoder = gma_attached_encoder(connector);
 struct cdv_intel_dp *intel_dp = encoder->dev_priv;
 struct edid *edid;
 bool has_audio = 0;
 int edp = is_edp(encoder);

 if (edp)
  cdv_intel_edp_panel_vdd_on(encoder);

 edid = drm_get_edid(connector, &intel_dp->adapter);
 if (edid) {
  has_audio = drm_detect_monitor_audio(edid);
  kfree(edid);
 }
 if (edp)
  cdv_intel_edp_panel_vdd_off(encoder);

 return has_audio;
}
