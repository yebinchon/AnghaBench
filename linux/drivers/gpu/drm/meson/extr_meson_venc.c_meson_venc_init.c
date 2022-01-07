
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int current_mode; } ;
struct meson_drm {TYPE_1__ venc; scalar_t__ io_base; int hhi; } ;


 int ENCI_VIDEO_EN ;
 int ENCL_VIDEO_EN ;
 int ENCP_VIDEO_EN ;
 int HHI_HDMI_PHY_CNTL0 ;
 int HHI_VDAC_CNTL0 ;
 int HHI_VDAC_CNTL0_G12A ;
 int HHI_VDAC_CNTL1 ;
 int HHI_VDAC_CNTL1_G12A ;
 int MESON_VENC_MODE_NONE ;
 int VENC_VDAC_SETTING ;
 int VPU_COMPATIBLE_G12A ;
 int VPU_HDMI_ENCI_DATA_TO_HDMI ;
 int VPU_HDMI_ENCP_DATA_TO_HDMI ;
 int VPU_HDMI_SETTING ;
 scalar_t__ _REG (int ) ;
 int meson_venc_disable_vsync (struct meson_drm*) ;
 scalar_t__ meson_vpu_is_compatible (struct meson_drm*,int ) ;
 int regmap_write (int ,int ,int) ;
 int writel_bits_relaxed (int,int ,scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

void meson_venc_init(struct meson_drm *priv)
{

 if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A)) {
  regmap_write(priv->hhi, HHI_VDAC_CNTL0_G12A, 0);
  regmap_write(priv->hhi, HHI_VDAC_CNTL1_G12A, 8);
 } else {
  regmap_write(priv->hhi, HHI_VDAC_CNTL0, 0);
  regmap_write(priv->hhi, HHI_VDAC_CNTL1, 8);
 }


 writel_relaxed(0xff, priv->io_base + _REG(VENC_VDAC_SETTING));


 regmap_write(priv->hhi, HHI_HDMI_PHY_CNTL0, 0);


 writel_bits_relaxed(VPU_HDMI_ENCI_DATA_TO_HDMI |
       VPU_HDMI_ENCP_DATA_TO_HDMI, 0,
       priv->io_base + _REG(VPU_HDMI_SETTING));


 writel_relaxed(0, priv->io_base + _REG(ENCI_VIDEO_EN));
 writel_relaxed(0, priv->io_base + _REG(ENCP_VIDEO_EN));
 writel_relaxed(0, priv->io_base + _REG(ENCL_VIDEO_EN));


 meson_venc_disable_vsync(priv);

 priv->venc.current_mode = MESON_VENC_MODE_NONE;
}
