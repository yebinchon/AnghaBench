
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int supported; int low_rates; } ;
struct drm_scdc {int supported; int read_request; TYPE_1__ scrambling; } ;
struct drm_hdmi_info {struct drm_scdc scdc; } ;
struct drm_display_info {int has_hdmi_infoframe; int max_tmds_clock; struct drm_hdmi_info hdmi; } ;
struct drm_connector {struct drm_display_info display_info; } ;


 int DRM_DEBUG_KMS (char*,int) ;
 int drm_parse_ycbcr420_deep_color_info (struct drm_connector*,int const*) ;

__attribute__((used)) static void drm_parse_hdmi_forum_vsdb(struct drm_connector *connector,
     const u8 *hf_vsdb)
{
 struct drm_display_info *display = &connector->display_info;
 struct drm_hdmi_info *hdmi = &display->hdmi;

 display->has_hdmi_infoframe = 1;

 if (hf_vsdb[6] & 0x80) {
  hdmi->scdc.supported = 1;
  if (hf_vsdb[6] & 0x40)
   hdmi->scdc.read_request = 1;
 }
 if (hf_vsdb[5]) {

  u32 max_tmds_clock = hf_vsdb[5] * 5000;
  struct drm_scdc *scdc = &hdmi->scdc;

  if (max_tmds_clock > 340000) {
   display->max_tmds_clock = max_tmds_clock;
   DRM_DEBUG_KMS("HF-VSDB: max TMDS clock %d kHz\n",
    display->max_tmds_clock);
  }

  if (scdc->supported) {
   scdc->scrambling.supported = 1;


   if ((hf_vsdb[6] & 0x8))
    scdc->scrambling.low_rates = 1;
  }
 }

 drm_parse_ycbcr420_deep_color_info(connector, hf_vsdb);
}
