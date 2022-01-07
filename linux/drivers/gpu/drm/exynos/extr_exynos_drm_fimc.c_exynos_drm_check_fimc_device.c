
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int of_node; } ;


 int BIT (int) ;
 int ENODEV ;
 int fimc_mask ;
 int of_alias_get_id (int ,char*) ;

int exynos_drm_check_fimc_device(struct device *dev)
{
 int id = of_alias_get_id(dev->of_node, "fimc");

 if (id >= 0 && (BIT(id) & fimc_mask))
  return 0;
 return -ENODEV;
}
