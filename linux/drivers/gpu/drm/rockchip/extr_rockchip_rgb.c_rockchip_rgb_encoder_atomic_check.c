
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rockchip_crtc_state {int output_type; int output_mode; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_info {int* bus_formats; scalar_t__ num_bus_formats; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_connector_state {struct drm_connector* connector; } ;
struct drm_connector {struct drm_display_info display_info; } ;


 int DRM_MODE_CONNECTOR_LVDS ;




 int ROCKCHIP_OUT_MODE_P565 ;
 int ROCKCHIP_OUT_MODE_P666 ;
 int ROCKCHIP_OUT_MODE_P888 ;
 struct rockchip_crtc_state* to_rockchip_crtc_state (struct drm_crtc_state*) ;

__attribute__((used)) static int
rockchip_rgb_encoder_atomic_check(struct drm_encoder *encoder,
       struct drm_crtc_state *crtc_state,
       struct drm_connector_state *conn_state)
{
 struct rockchip_crtc_state *s = to_rockchip_crtc_state(crtc_state);
 struct drm_connector *connector = conn_state->connector;
 struct drm_display_info *info = &connector->display_info;
 u32 bus_format;

 if (info->num_bus_formats)
  bus_format = info->bus_formats[0];
 else
  bus_format = 128;

 switch (bus_format) {
 case 130:
  s->output_mode = ROCKCHIP_OUT_MODE_P666;
  break;
 case 131:
  s->output_mode = ROCKCHIP_OUT_MODE_P565;
  break;
 case 128:
 case 129:
 default:
  s->output_mode = ROCKCHIP_OUT_MODE_P888;
  break;
 }

 s->output_type = DRM_MODE_CONNECTOR_LVDS;

 return 0;
}
