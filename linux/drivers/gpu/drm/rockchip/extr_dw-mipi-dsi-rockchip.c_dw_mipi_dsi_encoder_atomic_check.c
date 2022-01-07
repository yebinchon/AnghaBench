
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_crtc_state {int output_flags; int output_type; int output_mode; } ;
struct dw_mipi_dsi_rockchip {int format; scalar_t__ slave; } ;
struct drm_encoder {int dummy; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_connector_state {int dummy; } ;


 int DRM_MODE_CONNECTOR_DSI ;
 int EINVAL ;



 int ROCKCHIP_OUTPUT_DSI_DUAL ;
 int ROCKCHIP_OUT_MODE_P565 ;
 int ROCKCHIP_OUT_MODE_P666 ;
 int ROCKCHIP_OUT_MODE_P888 ;
 int WARN_ON (int) ;
 struct dw_mipi_dsi_rockchip* to_dsi (struct drm_encoder*) ;
 struct rockchip_crtc_state* to_rockchip_crtc_state (struct drm_crtc_state*) ;

__attribute__((used)) static int
dw_mipi_dsi_encoder_atomic_check(struct drm_encoder *encoder,
     struct drm_crtc_state *crtc_state,
     struct drm_connector_state *conn_state)
{
 struct rockchip_crtc_state *s = to_rockchip_crtc_state(crtc_state);
 struct dw_mipi_dsi_rockchip *dsi = to_dsi(encoder);

 switch (dsi->format) {
 case 128:
  s->output_mode = ROCKCHIP_OUT_MODE_P888;
  break;
 case 129:
  s->output_mode = ROCKCHIP_OUT_MODE_P666;
  break;
 case 130:
  s->output_mode = ROCKCHIP_OUT_MODE_P565;
  break;
 default:
  WARN_ON(1);
  return -EINVAL;
 }

 s->output_type = DRM_MODE_CONNECTOR_DSI;
 if (dsi->slave)
  s->output_flags = ROCKCHIP_OUTPUT_DSI_DUAL;

 return 0;
}
