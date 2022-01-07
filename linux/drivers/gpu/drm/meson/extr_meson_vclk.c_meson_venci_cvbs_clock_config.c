
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_drm {int hhi; } ;


 int CTS_ENCI_EN ;
 int CTS_ENCI_SEL_MASK ;
 int CTS_ENCI_SEL_SHIFT ;
 int CTS_VDAC_EN ;
 int CTS_VDAC_SEL_MASK ;
 int CTS_VDAC_SEL_SHIFT ;
 unsigned int HDMI_PLL_LOCK ;
 unsigned int HDMI_PLL_LOCK_G12A ;
 int HDMI_PLL_RESET ;
 int HHI_HDMI_PLL_CNTL ;
 int HHI_HDMI_PLL_CNTL2 ;
 int HHI_HDMI_PLL_CNTL3 ;
 int HHI_HDMI_PLL_CNTL4 ;
 int HHI_HDMI_PLL_CNTL5 ;
 int HHI_HDMI_PLL_CNTL6 ;
 int HHI_HDMI_PLL_CNTL7 ;
 int HHI_VID_CLK_CNTL2 ;
 int HHI_VID_CLK_DIV ;
 int HHI_VIID_CLK_CNTL ;
 int HHI_VIID_CLK_DIV ;
 int VCLK2_DIV1_EN ;
 int VCLK2_DIV_EN ;
 int VCLK2_DIV_MASK ;
 int VCLK2_DIV_RESET ;
 int VCLK2_EN ;
 int VCLK2_SEL_MASK ;
 int VCLK2_SEL_SHIFT ;
 int VCLK2_SOFT_RESET ;
 int VID_PLL_DIV_1 ;
 int VPU_COMPATIBLE_G12A ;
 int VPU_COMPATIBLE_GXBB ;
 int VPU_COMPATIBLE_GXL ;
 int VPU_COMPATIBLE_GXM ;
 int meson_vid_pll_set (struct meson_drm*,int ) ;
 scalar_t__ meson_vpu_is_compatible (struct meson_drm*,int ) ;
 int regmap_read_poll_timeout (int ,int ,unsigned int,int,int,int ) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void meson_venci_cvbs_clock_config(struct meson_drm *priv)
{
 unsigned int val;


 if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXBB)) {
  regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL, 0x5800023d);
  regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL2, 0x00404e00);
  regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL3, 0x0d5c5091);
  regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL4, 0x801da72c);
  regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL5, 0x71486980);
  regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL6, 0x00000e55);
  regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL, 0x4800023d);


  regmap_read_poll_timeout(priv->hhi, HHI_HDMI_PLL_CNTL, val,
      (val & HDMI_PLL_LOCK), 10, 0);
 } else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM) ||
     meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXL)) {
  regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL, 0x4000027b);
  regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL2, 0x800cb300);
  regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL3, 0xa6212844);
  regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL4, 0x0c4d000c);
  regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL5, 0x001fa729);
  regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL6, 0x01a31500);


  regmap_update_bits(priv->hhi, HHI_HDMI_PLL_CNTL,
     HDMI_PLL_RESET, HDMI_PLL_RESET);
  regmap_update_bits(priv->hhi, HHI_HDMI_PLL_CNTL,
     HDMI_PLL_RESET, 0);


  regmap_read_poll_timeout(priv->hhi, HHI_HDMI_PLL_CNTL, val,
      (val & HDMI_PLL_LOCK), 10, 0);
 } else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A)) {
  regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL, 0x1a0504f7);
  regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL2, 0x00010000);
  regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL3, 0x00000000);
  regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL4, 0x6a28dc00);
  regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL5, 0x65771290);
  regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL6, 0x39272000);
  regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL7, 0x56540000);
  regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL, 0x3a0504f7);
  regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL, 0x1a0504f7);


  regmap_read_poll_timeout(priv->hhi, HHI_HDMI_PLL_CNTL, val,
   ((val & HDMI_PLL_LOCK_G12A) == HDMI_PLL_LOCK_G12A),
   10, 0);
 }


 regmap_update_bits(priv->hhi, HHI_VIID_CLK_CNTL, VCLK2_EN, 0);


 meson_vid_pll_set(priv, VID_PLL_DIV_1);


 regmap_update_bits(priv->hhi, HHI_VIID_CLK_DIV,
    VCLK2_DIV_MASK, (55 - 1));


 if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A))
  regmap_update_bits(priv->hhi, HHI_VIID_CLK_CNTL,
     VCLK2_SEL_MASK, (0 << VCLK2_SEL_SHIFT));
 else
  regmap_update_bits(priv->hhi, HHI_VIID_CLK_CNTL,
     VCLK2_SEL_MASK, (4 << VCLK2_SEL_SHIFT));


 regmap_update_bits(priv->hhi, HHI_VIID_CLK_CNTL, VCLK2_EN, VCLK2_EN);


 regmap_update_bits(priv->hhi, HHI_VID_CLK_DIV,
    CTS_ENCI_SEL_MASK, (8 << CTS_ENCI_SEL_SHIFT));

 regmap_update_bits(priv->hhi, HHI_VIID_CLK_DIV,
    CTS_VDAC_SEL_MASK, (8 << CTS_VDAC_SEL_SHIFT));


 regmap_update_bits(priv->hhi, HHI_VIID_CLK_DIV,
    VCLK2_DIV_EN | VCLK2_DIV_RESET, VCLK2_DIV_EN);


 regmap_update_bits(priv->hhi, HHI_VIID_CLK_CNTL,
    VCLK2_DIV1_EN, VCLK2_DIV1_EN);


 regmap_update_bits(priv->hhi, HHI_VIID_CLK_CNTL,
    VCLK2_SOFT_RESET, VCLK2_SOFT_RESET);
 regmap_update_bits(priv->hhi, HHI_VIID_CLK_CNTL,
    VCLK2_SOFT_RESET, 0);


 regmap_update_bits(priv->hhi, HHI_VID_CLK_CNTL2,
    CTS_ENCI_EN, CTS_ENCI_EN);

 regmap_update_bits(priv->hhi, HHI_VID_CLK_CNTL2,
    CTS_VDAC_EN, CTS_VDAC_EN);
}
