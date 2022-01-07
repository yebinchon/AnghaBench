
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lp55xx_device_config {int * dev_attr_group; } ;
struct lp55xx_chip {struct lp55xx_device_config* cfg; TYPE_1__* cl; } ;
struct device {int kobj; } ;
struct TYPE_2__ {struct device dev; } ;


 int lp55xx_engine_attr_group ;
 int sysfs_remove_group (int *,int *) ;

void lp55xx_unregister_sysfs(struct lp55xx_chip *chip)
{
 struct device *dev = &chip->cl->dev;
 struct lp55xx_device_config *cfg = chip->cfg;

 if (cfg->dev_attr_group)
  sysfs_remove_group(&dev->kobj, cfg->dev_attr_group);

 sysfs_remove_group(&dev->kobj, &lp55xx_engine_attr_group);
}
