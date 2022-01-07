
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_device {int dev; } ;






 int INTEGRATOR_CLCD_LCD0_EN ;
 int INTEGRATOR_CLCD_LCD1_EN ;
 int INTEGRATOR_CLCD_LCDMUX_VGA24 ;
 int INTEGRATOR_CLCD_LCDMUX_VGA555 ;
 int INTEGRATOR_CLCD_LCD_STATIC1 ;
 int INTEGRATOR_CLCD_LCD_STATIC2 ;
 int INTEGRATOR_CLCD_MASK ;
 int INTEGRATOR_HDR_CTRL_OFFSET ;
 int dev_err (int ,char*,int) ;
 int dev_info (int ,char*) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int versatile_syscon_map ;

__attribute__((used)) static void pl111_integrator_enable(struct drm_device *drm, u32 format)
{
 u32 val;

 dev_info(drm->dev, "enable Integrator CLCD connectors\n");


 val = INTEGRATOR_CLCD_LCD_STATIC1 | INTEGRATOR_CLCD_LCD_STATIC2 |
  INTEGRATOR_CLCD_LCD0_EN | INTEGRATOR_CLCD_LCD1_EN;

 switch (format) {
 case 130:
 case 128:

  val |= INTEGRATOR_CLCD_LCDMUX_VGA24;
  break;
 case 131:
 case 129:

  val |= INTEGRATOR_CLCD_LCDMUX_VGA555;
  break;
 default:
  dev_err(drm->dev, "unhandled format on Integrator 0x%08x\n",
   format);
  break;
 }

 regmap_update_bits(versatile_syscon_map,
      INTEGRATOR_HDR_CTRL_OFFSET,
      INTEGRATOR_CLCD_MASK,
      val);
}
