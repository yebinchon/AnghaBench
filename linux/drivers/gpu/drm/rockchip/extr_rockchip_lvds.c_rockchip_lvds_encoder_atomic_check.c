
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_crtc_state {int output_type; int output_mode; } ;
struct drm_encoder {int dummy; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_connector_state {int dummy; } ;


 int DRM_MODE_CONNECTOR_LVDS ;
 int ROCKCHIP_OUT_MODE_P888 ;
 struct rockchip_crtc_state* to_rockchip_crtc_state (struct drm_crtc_state*) ;

__attribute__((used)) static int
rockchip_lvds_encoder_atomic_check(struct drm_encoder *encoder,
       struct drm_crtc_state *crtc_state,
       struct drm_connector_state *conn_state)
{
 struct rockchip_crtc_state *s = to_rockchip_crtc_state(crtc_state);

 s->output_mode = ROCKCHIP_OUT_MODE_P888;
 s->output_type = DRM_MODE_CONNECTOR_LVDS;

 return 0;
}
