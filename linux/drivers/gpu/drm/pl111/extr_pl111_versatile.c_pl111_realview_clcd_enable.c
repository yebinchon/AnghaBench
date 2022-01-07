
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_device {int dev; } ;


 int SYS_CLCD ;
 int SYS_CLCD_CONNECTOR_MASK ;
 int SYS_CLCD_NLCDIOON ;
 int SYS_CLCD_PWR3V5SWITCH ;
 int dev_info (int ,char*) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int versatile_syscon_map ;

__attribute__((used)) static void pl111_realview_clcd_enable(struct drm_device *drm, u32 format)
{
 dev_info(drm->dev, "enable RealView CLCD connectors\n");
 regmap_update_bits(versatile_syscon_map,
      SYS_CLCD,
      SYS_CLCD_CONNECTOR_MASK,
      SYS_CLCD_NLCDIOON | SYS_CLCD_PWR3V5SWITCH);
}
