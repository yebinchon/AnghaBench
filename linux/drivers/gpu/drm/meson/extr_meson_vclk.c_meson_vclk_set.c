
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_drm {int hhi; } ;


 int CTS_ENCI_EN ;
 int CTS_ENCI_SEL_MASK ;
 int CTS_ENCI_SEL_SHIFT ;
 int CTS_ENCP_EN ;
 int CTS_ENCP_SEL_MASK ;
 int CTS_ENCP_SEL_SHIFT ;
 int CTS_HDMI_SYS_DIV_MASK ;
 int CTS_HDMI_SYS_EN ;
 int CTS_HDMI_SYS_SEL_MASK ;
 int HDMI_TX_PIXEL_EN ;
 int HDMI_TX_PIXEL_SEL_MASK ;
 int HDMI_TX_PIXEL_SEL_SHIFT ;
 int HHI_HDMI_CLK_CNTL ;
 int HHI_VID_CLK_CNTL ;
 int HHI_VID_CLK_CNTL2 ;
 int HHI_VID_CLK_DIV ;
 int VCLK_DIV12_EN ;
 int VCLK_DIV1_EN ;
 int VCLK_DIV2_EN ;
 int VCLK_DIV4_EN ;
 int VCLK_DIV6_EN ;
 int VCLK_DIV_MASK ;
 int VCLK_EN ;
 int VCLK_SEL_MASK ;
 int VPU_COMPATIBLE_G12A ;
 int VPU_COMPATIBLE_GXBB ;
 int VPU_COMPATIBLE_GXL ;
 int VPU_COMPATIBLE_GXM ;
 int meson_hdmi_pll_generic_set (struct meson_drm*,unsigned int) ;
 int meson_hdmi_pll_set_params (struct meson_drm*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int meson_vid_pll_set (struct meson_drm*,unsigned int) ;
 scalar_t__ meson_vpu_is_compatible (struct meson_drm*,int ) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static void meson_vclk_set(struct meson_drm *priv, unsigned int pll_base_freq,
      unsigned int od1, unsigned int od2, unsigned int od3,
      unsigned int vid_pll_div, unsigned int vclk_div,
      unsigned int hdmi_tx_div, unsigned int venc_div,
      bool hdmi_use_enci, bool vic_alternate_clock)
{
 unsigned int m = 0, frac = 0;


 regmap_update_bits(priv->hhi, HHI_HDMI_CLK_CNTL,
      CTS_HDMI_SYS_SEL_MASK, 0);
 regmap_update_bits(priv->hhi, HHI_HDMI_CLK_CNTL,
      CTS_HDMI_SYS_DIV_MASK, 0);
 regmap_update_bits(priv->hhi, HHI_HDMI_CLK_CNTL,
      CTS_HDMI_SYS_EN, CTS_HDMI_SYS_EN);


 if (!od1 && !od2 && !od3) {
  meson_hdmi_pll_generic_set(priv, pll_base_freq);
 } else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXBB)) {
  switch (pll_base_freq) {
  case 2970000:
   m = 0x3d;
   frac = vic_alternate_clock ? 0xd02 : 0xe00;
   break;
  case 4320000:
   m = vic_alternate_clock ? 0x59 : 0x5a;
   frac = vic_alternate_clock ? 0xe8f : 0;
   break;
  case 5940000:
   m = 0x7b;
   frac = vic_alternate_clock ? 0xa05 : 0xc00;
   break;
  }

  meson_hdmi_pll_set_params(priv, m, frac, od1, od2, od3);
 } else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM) ||
     meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXL)) {
  switch (pll_base_freq) {
  case 2970000:
   m = 0x7b;
   frac = vic_alternate_clock ? 0x281 : 0x300;
   break;
  case 4320000:
   m = vic_alternate_clock ? 0xb3 : 0xb4;
   frac = vic_alternate_clock ? 0x347 : 0;
   break;
  case 5940000:
   m = 0xf7;
   frac = vic_alternate_clock ? 0x102 : 0x200;
   break;
  }

  meson_hdmi_pll_set_params(priv, m, frac, od1, od2, od3);
 } else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A)) {
  switch (pll_base_freq) {
  case 2970000:
   m = 0x7b;
   frac = vic_alternate_clock ? 0x140b4 : 0x18000;
   break;
  case 4320000:
   m = vic_alternate_clock ? 0xb3 : 0xb4;
   frac = vic_alternate_clock ? 0x1a3ee : 0;
   break;
  case 5940000:
   m = 0xf7;
   frac = vic_alternate_clock ? 0x8148 : 0x10000;
   break;
  }

  meson_hdmi_pll_set_params(priv, m, frac, od1, od2, od3);
 }


 meson_vid_pll_set(priv, vid_pll_div);


 regmap_update_bits(priv->hhi, HHI_VID_CLK_CNTL,
      VCLK_SEL_MASK, 0);
 regmap_update_bits(priv->hhi, HHI_VID_CLK_DIV,
      VCLK_DIV_MASK, vclk_div - 1);


 switch (hdmi_tx_div) {
 case 1:

  regmap_update_bits(priv->hhi, HHI_VID_CLK_CNTL,
       VCLK_DIV1_EN, VCLK_DIV1_EN);


  regmap_update_bits(priv->hhi, HHI_HDMI_CLK_CNTL,
       HDMI_TX_PIXEL_SEL_MASK, 0);
  break;
 case 2:

  regmap_update_bits(priv->hhi, HHI_VID_CLK_CNTL,
       VCLK_DIV2_EN, VCLK_DIV2_EN);


  regmap_update_bits(priv->hhi, HHI_HDMI_CLK_CNTL,
   HDMI_TX_PIXEL_SEL_MASK, 1 << HDMI_TX_PIXEL_SEL_SHIFT);
  break;
 case 4:

  regmap_update_bits(priv->hhi, HHI_VID_CLK_CNTL,
       VCLK_DIV4_EN, VCLK_DIV4_EN);


  regmap_update_bits(priv->hhi, HHI_HDMI_CLK_CNTL,
   HDMI_TX_PIXEL_SEL_MASK, 2 << HDMI_TX_PIXEL_SEL_SHIFT);
  break;
 case 6:

  regmap_update_bits(priv->hhi, HHI_VID_CLK_CNTL,
       VCLK_DIV6_EN, VCLK_DIV6_EN);


  regmap_update_bits(priv->hhi, HHI_HDMI_CLK_CNTL,
   HDMI_TX_PIXEL_SEL_MASK, 3 << HDMI_TX_PIXEL_SEL_SHIFT);
  break;
 case 12:

  regmap_update_bits(priv->hhi, HHI_VID_CLK_CNTL,
       VCLK_DIV12_EN, VCLK_DIV12_EN);


  regmap_update_bits(priv->hhi, HHI_HDMI_CLK_CNTL,
   HDMI_TX_PIXEL_SEL_MASK, 4 << HDMI_TX_PIXEL_SEL_SHIFT);
  break;
 }
 regmap_update_bits(priv->hhi, HHI_VID_CLK_CNTL2,
       HDMI_TX_PIXEL_EN, HDMI_TX_PIXEL_EN);


 switch (venc_div) {
 case 1:

  regmap_update_bits(priv->hhi, HHI_VID_CLK_CNTL,
       VCLK_DIV1_EN, VCLK_DIV1_EN);

  if (hdmi_use_enci)

   regmap_update_bits(priv->hhi, HHI_VID_CLK_DIV,
        CTS_ENCI_SEL_MASK, 0);
  else

   regmap_update_bits(priv->hhi, HHI_VID_CLK_DIV,
        CTS_ENCP_SEL_MASK, 0);
  break;
 case 2:

  regmap_update_bits(priv->hhi, HHI_VID_CLK_CNTL,
       VCLK_DIV2_EN, VCLK_DIV2_EN);

  if (hdmi_use_enci)

   regmap_update_bits(priv->hhi, HHI_VID_CLK_DIV,
    CTS_ENCI_SEL_MASK, 1 << CTS_ENCI_SEL_SHIFT);
  else

   regmap_update_bits(priv->hhi, HHI_VID_CLK_DIV,
    CTS_ENCP_SEL_MASK, 1 << CTS_ENCP_SEL_SHIFT);
  break;
 case 4:

  regmap_update_bits(priv->hhi, HHI_VID_CLK_CNTL,
       VCLK_DIV4_EN, VCLK_DIV4_EN);

  if (hdmi_use_enci)

   regmap_update_bits(priv->hhi, HHI_VID_CLK_DIV,
    CTS_ENCI_SEL_MASK, 2 << CTS_ENCI_SEL_SHIFT);
  else

   regmap_update_bits(priv->hhi, HHI_VID_CLK_DIV,
    CTS_ENCP_SEL_MASK, 2 << CTS_ENCP_SEL_SHIFT);
  break;
 case 6:

  regmap_update_bits(priv->hhi, HHI_VID_CLK_CNTL,
       VCLK_DIV6_EN, VCLK_DIV6_EN);

  if (hdmi_use_enci)

   regmap_update_bits(priv->hhi, HHI_VID_CLK_DIV,
    CTS_ENCI_SEL_MASK, 3 << CTS_ENCI_SEL_SHIFT);
  else

   regmap_update_bits(priv->hhi, HHI_VID_CLK_DIV,
    CTS_ENCP_SEL_MASK, 3 << CTS_ENCP_SEL_SHIFT);
  break;
 case 12:

  regmap_update_bits(priv->hhi, HHI_VID_CLK_CNTL,
       VCLK_DIV12_EN, VCLK_DIV12_EN);

  if (hdmi_use_enci)

   regmap_update_bits(priv->hhi, HHI_VID_CLK_DIV,
    CTS_ENCI_SEL_MASK, 4 << CTS_ENCI_SEL_SHIFT);
  else

   regmap_update_bits(priv->hhi, HHI_VID_CLK_DIV,
    CTS_ENCP_SEL_MASK, 4 << CTS_ENCP_SEL_SHIFT);
  break;
 }

 if (hdmi_use_enci)

  regmap_update_bits(priv->hhi, HHI_VID_CLK_CNTL2,
       CTS_ENCI_EN, CTS_ENCI_EN);
 else

  regmap_update_bits(priv->hhi, HHI_VID_CLK_CNTL2,
       CTS_ENCP_EN, CTS_ENCP_EN);

 regmap_update_bits(priv->hhi, HHI_VID_CLK_CNTL, VCLK_EN, VCLK_EN);
}
