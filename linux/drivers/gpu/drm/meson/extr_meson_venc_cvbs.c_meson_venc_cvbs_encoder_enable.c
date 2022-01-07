
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_venc_cvbs {struct meson_drm* priv; } ;
struct meson_drm {int hhi; scalar_t__ io_base; } ;
struct drm_encoder {int dummy; } ;


 int HHI_VDAC_CNTL0 ;
 int HHI_VDAC_CNTL0_G12A ;
 int HHI_VDAC_CNTL1 ;
 int HHI_VDAC_CNTL1_G12A ;
 int VENC_VDAC_DACSEL0 ;
 int VENC_VDAC_SEL_ATV_DMD ;
 int VPU_COMPATIBLE_G12A ;
 int VPU_COMPATIBLE_GXBB ;
 int VPU_COMPATIBLE_GXL ;
 int VPU_COMPATIBLE_GXM ;
 scalar_t__ _REG (int ) ;
 struct meson_venc_cvbs* encoder_to_meson_venc_cvbs (struct drm_encoder*) ;
 scalar_t__ meson_vpu_is_compatible (struct meson_drm*,int ) ;
 int regmap_write (int ,int ,int) ;
 int writel_bits_relaxed (int ,int ,scalar_t__) ;

__attribute__((used)) static void meson_venc_cvbs_encoder_enable(struct drm_encoder *encoder)
{
 struct meson_venc_cvbs *meson_venc_cvbs =
     encoder_to_meson_venc_cvbs(encoder);
 struct meson_drm *priv = meson_venc_cvbs->priv;


 writel_bits_relaxed(VENC_VDAC_SEL_ATV_DMD, 0,
       priv->io_base + _REG(VENC_VDAC_DACSEL0));

 if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXBB)) {
  regmap_write(priv->hhi, HHI_VDAC_CNTL0, 1);
  regmap_write(priv->hhi, HHI_VDAC_CNTL1, 0);
 } else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM) ||
   meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXL)) {
  regmap_write(priv->hhi, HHI_VDAC_CNTL0, 0xf0001);
  regmap_write(priv->hhi, HHI_VDAC_CNTL1, 0);
 } else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A)) {
  regmap_write(priv->hhi, HHI_VDAC_CNTL0_G12A, 0x906001);
  regmap_write(priv->hhi, HHI_VDAC_CNTL1_G12A, 0);
 }
}
