
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct meson_drm {struct drm_crtc* crtc; TYPE_1__* drm; int primary_plane; } ;
struct drm_crtc {int dummy; } ;
struct meson_crtc {int enable_vd1; int enable_osd1; int viu_offset; struct drm_crtc base; struct meson_drm* priv; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MESON_G12A_VIU_OFFSET ;
 int VPU_COMPATIBLE_G12A ;
 int dev_err (int ,char*) ;
 struct meson_crtc* devm_kzalloc (int ,int,int ) ;
 int drm_crtc_helper_add (struct drm_crtc*,int *) ;
 int drm_crtc_init_with_planes (TYPE_1__*,struct drm_crtc*,int ,int *,int *,char*) ;
 int meson_crtc_enable_osd1 ;
 int meson_crtc_enable_vd1 ;
 int meson_crtc_funcs ;
 int meson_crtc_helper_funcs ;
 int meson_g12a_crtc_enable_osd1 ;
 int meson_g12a_crtc_enable_vd1 ;
 int meson_g12a_crtc_helper_funcs ;
 scalar_t__ meson_vpu_is_compatible (struct meson_drm*,int ) ;

int meson_crtc_create(struct meson_drm *priv)
{
 struct meson_crtc *meson_crtc;
 struct drm_crtc *crtc;
 int ret;

 meson_crtc = devm_kzalloc(priv->drm->dev, sizeof(*meson_crtc),
      GFP_KERNEL);
 if (!meson_crtc)
  return -ENOMEM;

 meson_crtc->priv = priv;
 crtc = &meson_crtc->base;
 ret = drm_crtc_init_with_planes(priv->drm, crtc,
     priv->primary_plane, ((void*)0),
     &meson_crtc_funcs, "meson_crtc");
 if (ret) {
  dev_err(priv->drm->dev, "Failed to init CRTC\n");
  return ret;
 }

 if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A)) {
  meson_crtc->enable_osd1 = meson_g12a_crtc_enable_osd1;
  meson_crtc->enable_vd1 = meson_g12a_crtc_enable_vd1;
  meson_crtc->viu_offset = MESON_G12A_VIU_OFFSET;
  drm_crtc_helper_add(crtc, &meson_g12a_crtc_helper_funcs);
 } else {
  meson_crtc->enable_osd1 = meson_crtc_enable_osd1;
  meson_crtc->enable_vd1 = meson_crtc_enable_vd1;
  drm_crtc_helper_add(crtc, &meson_crtc_helper_funcs);
 }

 priv->crtc = crtc;

 return 0;
}
