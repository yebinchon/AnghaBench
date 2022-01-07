
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_drm {int hhi; } ;


 int HHI_VID_PLL_CLK_DIV ;
 int VID_PLL_BYPASS ;
 unsigned int VID_PLL_DIV_1 ;
 int VID_PLL_EN ;
 int VID_PLL_PRESET ;
 int regmap_update_bits (int ,int ,int,int) ;

void meson_vid_pll_set(struct meson_drm *priv, unsigned int div)
{
 unsigned int shift_val = 0;
 unsigned int shift_sel = 0;


 regmap_update_bits(priv->hhi, HHI_VID_PLL_CLK_DIV, VID_PLL_EN, 0);
 regmap_update_bits(priv->hhi, HHI_VID_PLL_CLK_DIV, VID_PLL_PRESET, 0);

 switch (div) {
 case 138:
  shift_val = 0x0aaa;
  shift_sel = 0;
  break;
 case 137:
  shift_val = 0x5294;
  shift_sel = 2;
  break;
 case 136:
  shift_val = 0x0db6;
  shift_sel = 0;
  break;
 case 135:
  shift_val = 0x36cc;
  shift_sel = 1;
  break;
 case 134:
  shift_val = 0x6666;
  shift_sel = 2;
  break;
 case 133:
  shift_val = 0x0ccc;
  shift_sel = 0;
  break;
 case 132:
  shift_val = 0x739c;
  shift_sel = 2;
  break;
 case 131:
  shift_val = 0x0e38;
  shift_sel = 0;
  break;
 case 130:
  shift_val = 0x0000;
  shift_sel = 3;
  break;
 case 129:
  shift_val = 0x3c78;
  shift_sel = 1;
  break;
 case 128:
  shift_val = 0x78f0;
  shift_sel = 2;
  break;
 case 141:
  shift_val = 0x0fc0;
  shift_sel = 0;
  break;
 case 140:
  shift_val = 0x3f80;
  shift_sel = 1;
  break;
 case 139:
  shift_val = 0x7f80;
  shift_sel = 2;
  break;
 }

 if (div == VID_PLL_DIV_1)

  regmap_update_bits(priv->hhi, HHI_VID_PLL_CLK_DIV,
       VID_PLL_BYPASS, VID_PLL_BYPASS);
 else {

  regmap_update_bits(priv->hhi, HHI_VID_PLL_CLK_DIV,
       VID_PLL_BYPASS, 0);

  regmap_update_bits(priv->hhi, HHI_VID_PLL_CLK_DIV,
       3 << 16, 0);
  regmap_update_bits(priv->hhi, HHI_VID_PLL_CLK_DIV,
       VID_PLL_PRESET, 0);
  regmap_update_bits(priv->hhi, HHI_VID_PLL_CLK_DIV,
       0x7fff, 0);


  regmap_update_bits(priv->hhi, HHI_VID_PLL_CLK_DIV,
       3 << 16, shift_sel << 16);
  regmap_update_bits(priv->hhi, HHI_VID_PLL_CLK_DIV,
       VID_PLL_PRESET, VID_PLL_PRESET);
  regmap_update_bits(priv->hhi, HHI_VID_PLL_CLK_DIV,
       0x7fff, shift_val);

  regmap_update_bits(priv->hhi, HHI_VID_PLL_CLK_DIV,
       VID_PLL_PRESET, 0);
 }


 regmap_update_bits(priv->hhi, HHI_VID_PLL_CLK_DIV,
    VID_PLL_EN, VID_PLL_EN);
}
