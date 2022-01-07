
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_device {int dev; } ;
 int SYS_CLCD ;
 int SYS_CLCD_CONNECTOR_MASK ;
 int SYS_CLCD_MODE_5551 ;
 int SYS_CLCD_MODE_565_B_LSB ;
 int SYS_CLCD_MODE_565_R_LSB ;
 int SYS_CLCD_MODE_888 ;
 int SYS_CLCD_MODE_MASK ;
 int SYS_CLCD_NLCDIOON ;
 int SYS_CLCD_PWR3V5SWITCH ;
 int dev_err (int ,char*,int) ;
 int dev_info (int ,char*) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int versatile_syscon_map ;

__attribute__((used)) static void pl111_versatile_enable(struct drm_device *drm, u32 format)
{
 u32 val = 0;

 dev_info(drm->dev, "enable Versatile CLCD connectors\n");

 switch (format) {
 case 136:
 case 130:
 case 134:
 case 128:
  val |= SYS_CLCD_MODE_888;
  break;
 case 133:
  val |= SYS_CLCD_MODE_565_R_LSB;
  break;
 case 132:
  val |= SYS_CLCD_MODE_565_B_LSB;
  break;
 case 137:
 case 131:
 case 135:
 case 129:
  val |= SYS_CLCD_MODE_5551;
  break;
 default:
  dev_err(drm->dev, "unhandled format on Versatile 0x%08x\n",
   format);
  break;
 }


 regmap_update_bits(versatile_syscon_map,
      SYS_CLCD,
      SYS_CLCD_MODE_MASK,
      val);


 regmap_update_bits(versatile_syscon_map,
      SYS_CLCD,
      SYS_CLCD_CONNECTOR_MASK,
      SYS_CLCD_NLCDIOON | SYS_CLCD_PWR3V5SWITCH);
}
