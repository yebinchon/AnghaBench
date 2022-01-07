
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dev; } ;


 int SYS_CLCD ;
 int SYS_CLCD_CONNECTOR_MASK ;
 int dev_info (int ,char*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int versatile_syscon_map ;

__attribute__((used)) static void pl111_versatile_disable(struct drm_device *drm)
{
 dev_info(drm->dev, "disable Versatile CLCD connectors\n");
 regmap_update_bits(versatile_syscon_map,
      SYS_CLCD,
      SYS_CLCD_CONNECTOR_MASK,
      0);
}
