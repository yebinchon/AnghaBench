
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rockchip_crtc_state {int output_bpc; int output_type; int output_mode; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_info {int bpc; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_connector_state {TYPE_1__* connector; } ;
struct TYPE_2__ {struct drm_display_info display_info; } ;


 int DRM_MODE_CONNECTOR_eDP ;
 int ROCKCHIP_OUT_MODE_AAAA ;
 struct rockchip_crtc_state* to_rockchip_crtc_state (struct drm_crtc_state*) ;

__attribute__((used)) static int
rockchip_dp_drm_encoder_atomic_check(struct drm_encoder *encoder,
          struct drm_crtc_state *crtc_state,
          struct drm_connector_state *conn_state)
{
 struct rockchip_crtc_state *s = to_rockchip_crtc_state(crtc_state);
 struct drm_display_info *di = &conn_state->connector->display_info;
 s->output_mode = ROCKCHIP_OUT_MODE_AAAA;
 s->output_type = DRM_MODE_CONNECTOR_eDP;
 s->output_bpc = di->bpc;

 return 0;
}
