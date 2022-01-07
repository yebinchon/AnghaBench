
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_venc_cvbs {struct meson_drm* priv; } ;
struct meson_drm {int hhi; } ;
struct drm_encoder {int dummy; } ;


 int HHI_VDAC_CNTL0 ;
 int HHI_VDAC_CNTL0_G12A ;
 int HHI_VDAC_CNTL1 ;
 int HHI_VDAC_CNTL1_G12A ;
 int VPU_COMPATIBLE_G12A ;
 struct meson_venc_cvbs* encoder_to_meson_venc_cvbs (struct drm_encoder*) ;
 scalar_t__ meson_vpu_is_compatible (struct meson_drm*,int ) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void meson_venc_cvbs_encoder_disable(struct drm_encoder *encoder)
{
 struct meson_venc_cvbs *meson_venc_cvbs =
     encoder_to_meson_venc_cvbs(encoder);
 struct meson_drm *priv = meson_venc_cvbs->priv;


 if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A)) {
  regmap_write(priv->hhi, HHI_VDAC_CNTL0_G12A, 0);
  regmap_write(priv->hhi, HHI_VDAC_CNTL1_G12A, 0);
 } else {
  regmap_write(priv->hhi, HHI_VDAC_CNTL0, 0);
  regmap_write(priv->hhi, HHI_VDAC_CNTL1, 8);
 }
}
