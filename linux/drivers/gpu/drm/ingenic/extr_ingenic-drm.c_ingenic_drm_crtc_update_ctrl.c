
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ingenic_drm {int map; } ;
struct drm_format_info {int format; } ;





 unsigned int JZ_LCD_CTRL_BPP_15_16 ;
 unsigned int JZ_LCD_CTRL_BPP_18_24 ;
 unsigned int JZ_LCD_CTRL_BPP_MASK ;
 unsigned int JZ_LCD_CTRL_BURST_16 ;
 unsigned int JZ_LCD_CTRL_OFUP ;
 unsigned int JZ_LCD_CTRL_RGB555 ;
 int JZ_REG_LCD_CTRL ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;

__attribute__((used)) static void ingenic_drm_crtc_update_ctrl(struct ingenic_drm *priv,
      const struct drm_format_info *finfo)
{
 unsigned int ctrl = JZ_LCD_CTRL_OFUP | JZ_LCD_CTRL_BURST_16;

 switch (finfo->format) {
 case 129:
  ctrl |= JZ_LCD_CTRL_RGB555;

 case 130:
  ctrl |= JZ_LCD_CTRL_BPP_15_16;
  break;
 case 128:
  ctrl |= JZ_LCD_CTRL_BPP_18_24;
  break;
 }

 regmap_update_bits(priv->map, JZ_REG_LCD_CTRL,
      JZ_LCD_CTRL_OFUP | JZ_LCD_CTRL_BURST_16 |
      JZ_LCD_CTRL_BPP_MASK, ctrl);
}
