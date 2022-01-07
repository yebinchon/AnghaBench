
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_dp_device {int dev; } ;
struct drm_encoder {int dummy; } ;
struct drm_crtc_state {int self_refresh_active; } ;
struct drm_crtc {int dummy; } ;
struct drm_atomic_state {int dummy; } ;


 int DRM_DEV_ERROR (int ,char*) ;
 int PSR_WAIT_LINE_FLAG_TIMEOUT_MS ;
 struct drm_crtc_state* drm_atomic_get_new_crtc_state (struct drm_atomic_state*,struct drm_crtc*) ;
 struct drm_crtc* rockchip_dp_drm_get_new_crtc (struct drm_encoder*,struct drm_atomic_state*) ;
 int rockchip_drm_wait_vact_end (struct drm_crtc*,int ) ;
 struct rockchip_dp_device* to_dp (struct drm_encoder*) ;

__attribute__((used)) static void rockchip_dp_drm_encoder_disable(struct drm_encoder *encoder,
         struct drm_atomic_state *state)
{
 struct rockchip_dp_device *dp = to_dp(encoder);
 struct drm_crtc *crtc;
 struct drm_crtc_state *new_crtc_state = ((void*)0);
 int ret;

 crtc = rockchip_dp_drm_get_new_crtc(encoder, state);

 if (!crtc)
  return;

 new_crtc_state = drm_atomic_get_new_crtc_state(state, crtc);

 if (!new_crtc_state || !new_crtc_state->self_refresh_active)
  return;

 ret = rockchip_drm_wait_vact_end(crtc, PSR_WAIT_LINE_FLAG_TIMEOUT_MS);
 if (ret)
  DRM_DEV_ERROR(dp->dev, "line flag irq timed out\n");
}
