
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder {int dummy; } ;
struct drm_connector_helper_funcs {struct drm_encoder* (* best_encoder ) (struct drm_connector*) ;} ;
struct TYPE_2__ {int bpc; unsigned int max_tmds_clock; int edid_hdmi_dc_modes; } ;
struct drm_connector {int connector_type; TYPE_1__ display_info; int name; struct drm_connector_helper_funcs* helper_private; } ;
struct amdgpu_encoder_atom_dig {int lcd_misc; } ;
struct amdgpu_encoder {struct amdgpu_encoder_atom_dig* enc_priv; } ;
struct amdgpu_connector_atom_dig {int dp_sink_type; } ;
struct amdgpu_connector {unsigned int pixelclock_for_modeset; struct amdgpu_connector_atom_dig* con_priv; int use_digital; } ;


 int ATOM_PANEL_MISC_V13_6BIT_PER_COLOR ;
 int ATOM_PANEL_MISC_V13_8BIT_PER_COLOR ;
 int CONNECTOR_OBJECT_ID_DISPLAYPORT ;
 int CONNECTOR_OBJECT_ID_eDP ;
 int DRM_DEBUG (char*,int ,...) ;
 int DRM_EDID_HDMI_DC_30 ;







 int amdgpu_connector_edid (struct drm_connector*) ;
 scalar_t__ amdgpu_deep_color ;
 scalar_t__ drm_detect_hdmi_monitor (int ) ;
 struct drm_encoder* stub1 (struct drm_connector*) ;
 struct amdgpu_connector* to_amdgpu_connector (struct drm_connector*) ;
 struct amdgpu_encoder* to_amdgpu_encoder (struct drm_encoder*) ;

int amdgpu_connector_get_monitor_bpc(struct drm_connector *connector)
{
 struct amdgpu_connector *amdgpu_connector = to_amdgpu_connector(connector);
 struct amdgpu_connector_atom_dig *dig_connector;
 int bpc = 8;
 unsigned mode_clock, max_tmds_clock;

 switch (connector->connector_type) {
 case 133:
 case 130:
  if (amdgpu_connector->use_digital) {
   if (drm_detect_hdmi_monitor(amdgpu_connector_edid(connector))) {
    if (connector->display_info.bpc)
     bpc = connector->display_info.bpc;
   }
  }
  break;
 case 134:
 case 131:
  if (drm_detect_hdmi_monitor(amdgpu_connector_edid(connector))) {
   if (connector->display_info.bpc)
    bpc = connector->display_info.bpc;
  }
  break;
 case 132:
  dig_connector = amdgpu_connector->con_priv;
  if ((dig_connector->dp_sink_type == CONNECTOR_OBJECT_ID_DISPLAYPORT) ||
      (dig_connector->dp_sink_type == CONNECTOR_OBJECT_ID_eDP) ||
      drm_detect_hdmi_monitor(amdgpu_connector_edid(connector))) {
   if (connector->display_info.bpc)
    bpc = connector->display_info.bpc;
  }
  break;
 case 128:
 case 129:
  if (connector->display_info.bpc)
   bpc = connector->display_info.bpc;
  else {
   const struct drm_connector_helper_funcs *connector_funcs =
    connector->helper_private;
   struct drm_encoder *encoder = connector_funcs->best_encoder(connector);
   struct amdgpu_encoder *amdgpu_encoder = to_amdgpu_encoder(encoder);
   struct amdgpu_encoder_atom_dig *dig = amdgpu_encoder->enc_priv;

   if (dig->lcd_misc & ATOM_PANEL_MISC_V13_6BIT_PER_COLOR)
    bpc = 6;
   else if (dig->lcd_misc & ATOM_PANEL_MISC_V13_8BIT_PER_COLOR)
    bpc = 8;
  }
  break;
 }

 if (drm_detect_hdmi_monitor(amdgpu_connector_edid(connector))) {






  if (bpc > 12) {
   DRM_DEBUG("%s: HDMI deep color %d bpc unsupported. Using 12 bpc.\n",
      connector->name, bpc);
   bpc = 12;
  }


  if (connector->display_info.max_tmds_clock > 0) {

   mode_clock = amdgpu_connector->pixelclock_for_modeset;


   max_tmds_clock = connector->display_info.max_tmds_clock;

   DRM_DEBUG("%s: hdmi mode dotclock %d kHz, max tmds input clock %d kHz.\n",
      connector->name, mode_clock, max_tmds_clock);


   if ((bpc == 12) && (mode_clock * 3/2 > max_tmds_clock)) {
    if ((connector->display_info.edid_hdmi_dc_modes & DRM_EDID_HDMI_DC_30) &&
        (mode_clock * 5/4 <= max_tmds_clock))
     bpc = 10;
    else
     bpc = 8;

    DRM_DEBUG("%s: HDMI deep color 12 bpc exceeds max tmds clock. Using %d bpc.\n",
       connector->name, bpc);
   }

   if ((bpc == 10) && (mode_clock * 5/4 > max_tmds_clock)) {
    bpc = 8;
    DRM_DEBUG("%s: HDMI deep color 10 bpc exceeds max tmds clock. Using %d bpc.\n",
       connector->name, bpc);
   }
  } else if (bpc > 8) {

   DRM_DEBUG("%s: Required max tmds clock for HDMI deep color missing. Using 8 bpc.\n",
      connector->name);
   bpc = 8;
  }
 }

 if ((amdgpu_deep_color == 0) && (bpc > 8)) {
  DRM_DEBUG("%s: Deep color disabled. Set amdgpu module param deep_color=1 to enable.\n",
     connector->name);
  bpc = 8;
 }

 DRM_DEBUG("%s: Display bpc=%d, returned bpc=%d\n",
    connector->name, connector->display_info.bpc, bpc);

 return bpc;
}
