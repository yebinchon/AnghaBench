
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_venc_cvbs {struct meson_drm* priv; } ;
struct meson_drm {int dummy; } ;
struct meson_cvbs_mode {int enci; int mode; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int dummy; } ;


 int MESON_CVBS_MODES_COUNT ;
 int MESON_VCLK_CVBS ;
 int MESON_VCLK_TARGET_CVBS ;
 scalar_t__ drm_mode_equal (struct drm_display_mode*,int *) ;
 struct meson_venc_cvbs* encoder_to_meson_venc_cvbs (struct drm_encoder*) ;
 struct meson_cvbs_mode* meson_cvbs_modes ;
 int meson_vclk_setup (struct meson_drm*,int ,int ,int ,int ,int) ;
 int meson_venci_cvbs_mode_set (struct meson_drm*,int ) ;

__attribute__((used)) static void meson_venc_cvbs_encoder_mode_set(struct drm_encoder *encoder,
       struct drm_display_mode *mode,
       struct drm_display_mode *adjusted_mode)
{
 struct meson_venc_cvbs *meson_venc_cvbs =
     encoder_to_meson_venc_cvbs(encoder);
 struct meson_drm *priv = meson_venc_cvbs->priv;
 int i;

 for (i = 0; i < MESON_CVBS_MODES_COUNT; ++i) {
  struct meson_cvbs_mode *meson_mode = &meson_cvbs_modes[i];

  if (drm_mode_equal(mode, &meson_mode->mode)) {
   meson_venci_cvbs_mode_set(priv,
        meson_mode->enci);


   meson_vclk_setup(priv, MESON_VCLK_TARGET_CVBS,
      MESON_VCLK_CVBS, MESON_VCLK_CVBS,
      MESON_VCLK_CVBS, 1);
   break;
  }
 }
}
