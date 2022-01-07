
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_cvbs_mode {int mode; } ;
struct drm_encoder {int dummy; } ;
struct drm_crtc_state {int mode; } ;
struct drm_connector_state {int dummy; } ;


 int EINVAL ;
 int MESON_CVBS_MODES_COUNT ;
 scalar_t__ drm_mode_equal (int *,int *) ;
 struct meson_cvbs_mode* meson_cvbs_modes ;

__attribute__((used)) static int meson_venc_cvbs_encoder_atomic_check(struct drm_encoder *encoder,
     struct drm_crtc_state *crtc_state,
     struct drm_connector_state *conn_state)
{
 int i;

 for (i = 0; i < MESON_CVBS_MODES_COUNT; ++i) {
  struct meson_cvbs_mode *meson_mode = &meson_cvbs_modes[i];

  if (drm_mode_equal(&crtc_state->mode, &meson_mode->mode))
   return 0;
 }

 return -EINVAL;
}
