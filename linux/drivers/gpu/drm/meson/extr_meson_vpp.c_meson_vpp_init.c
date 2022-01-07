
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_drm {scalar_t__ io_base; } ;


 int DOLBY_PATH_CTRL ;
 int VIU_MISC_CTRL1 ;
 int VPP_BLEND_VD2_H_START_END ;
 int VPP_DOLBY_CTRL ;
 int VPP_DUMMY_DATA1 ;
 int VPP_HOLD_LINES ;
 int VPP_HSC_BANK_LENGTH (int) ;
 int VPP_MINUS_BLACK_LVL_VADJ1_ENABLE ;
 int VPP_MISC ;
 int VPP_OFIFO_SIZE ;
 int VPP_OFIFO_SIZE_DEFAULT ;
 int VPP_OFIFO_SIZE_MASK ;
 int VPP_OSD1_POSTBLEND ;
 int VPP_OSD2_POSTBLEND ;
 int VPP_OSD_HSC_CTRL0 ;
 int VPP_OSD_SC_CTRL0 ;
 int VPP_OSD_VSC_CTRL0 ;
 int VPP_POSTBLEND_ENABLE ;
 int VPP_POSTBLEND_HOLD_LINES (int) ;
 int VPP_PPS_DUMMY_DATA_MODE ;
 int VPP_PREBLEND_ENABLE ;
 int VPP_PREBLEND_HOLD_LINES (int) ;
 int VPP_PREBLEND_VD1_H_START_END ;
 int VPP_SC_MISC ;
 int VPP_SC_VD_EN_ENABLE ;
 int VPP_VADJ_CTRL ;
 int VPP_VD1_POSTBLEND ;
 int VPP_VD1_PREBLEND ;
 int VPP_VD2_POSTBLEND ;
 int VPP_VD2_PREBLEND ;
 int VPP_VSC_BANK_LENGTH (int) ;
 int VPU_COMPATIBLE_G12A ;
 int VPU_COMPATIBLE_GXL ;
 int VPU_COMPATIBLE_GXM ;
 scalar_t__ _REG (int ) ;
 int meson_vpp_write_scaling_filter_coefs (struct meson_drm*,int ,int) ;
 int meson_vpp_write_vd_scaling_filter_coefs (struct meson_drm*,int ,int) ;
 scalar_t__ meson_vpu_is_compatible (struct meson_drm*,int ) ;
 int vpp_filter_coefs_4point_bspline ;
 int vpp_filter_coefs_bicubic ;
 int writel_bits_relaxed (int,int,scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

void meson_vpp_init(struct meson_drm *priv)
{

 if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXL))
  writel_relaxed(0x108080, priv->io_base + _REG(VPP_DUMMY_DATA1));
 else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM)) {
  writel_bits_relaxed(0xff << 16, 0xff << 16,
        priv->io_base + _REG(VIU_MISC_CTRL1));
  writel_relaxed(VPP_PPS_DUMMY_DATA_MODE,
          priv->io_base + _REG(VPP_DOLBY_CTRL));
  writel_relaxed(0x1020080,
    priv->io_base + _REG(VPP_DUMMY_DATA1));
 } else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A))
  writel_relaxed(0xf, priv->io_base + _REG(DOLBY_PATH_CTRL));


 if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A))
  writel_relaxed(VPP_OFIFO_SIZE_DEFAULT,
          priv->io_base + _REG(VPP_OFIFO_SIZE));
 else
  writel_bits_relaxed(VPP_OFIFO_SIZE_MASK, 0x77f,
        priv->io_base + _REG(VPP_OFIFO_SIZE));
 writel_relaxed(VPP_POSTBLEND_HOLD_LINES(4) | VPP_PREBLEND_HOLD_LINES(4),
         priv->io_base + _REG(VPP_HOLD_LINES));

 if (!meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A)) {

  writel_bits_relaxed(VPP_PREBLEND_ENABLE, 0,
        priv->io_base + _REG(VPP_MISC));


  writel_bits_relaxed(VPP_POSTBLEND_ENABLE, 0,
        priv->io_base + _REG(VPP_MISC));


  writel_bits_relaxed(VPP_OSD1_POSTBLEND | VPP_OSD2_POSTBLEND |
        VPP_VD1_POSTBLEND | VPP_VD2_POSTBLEND |
        VPP_VD1_PREBLEND | VPP_VD2_PREBLEND, 0,
        priv->io_base + _REG(VPP_MISC));


  writel_relaxed(4096,
    priv->io_base + _REG(VPP_PREBLEND_VD1_H_START_END));
  writel_relaxed(4096,
    priv->io_base + _REG(VPP_BLEND_VD2_H_START_END));
 }


 writel_relaxed(0, priv->io_base + _REG(VPP_OSD_SC_CTRL0));
 writel_relaxed(0, priv->io_base + _REG(VPP_OSD_VSC_CTRL0));
 writel_relaxed(0, priv->io_base + _REG(VPP_OSD_HSC_CTRL0));


 writel_relaxed(VPP_VSC_BANK_LENGTH(4) | VPP_HSC_BANK_LENGTH(4) |
         VPP_SC_VD_EN_ENABLE,
         priv->io_base + _REG(VPP_SC_MISC));


 writel_relaxed(VPP_MINUS_BLACK_LVL_VADJ1_ENABLE,
         priv->io_base + _REG(VPP_VADJ_CTRL));


 meson_vpp_write_scaling_filter_coefs(priv,
    vpp_filter_coefs_4point_bspline, 0);
 meson_vpp_write_scaling_filter_coefs(priv,
    vpp_filter_coefs_4point_bspline, 1);


 meson_vpp_write_vd_scaling_filter_coefs(priv, vpp_filter_coefs_bicubic,
      0);
 meson_vpp_write_vd_scaling_filter_coefs(priv, vpp_filter_coefs_bicubic,
      1);
}
