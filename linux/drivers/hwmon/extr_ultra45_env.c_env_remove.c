
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct platform_device {int * resource; TYPE_1__ dev; } ;
struct env {int regs; int hwmon_dev; } ;


 int REG_SIZE ;
 int env_group ;
 int hwmon_device_unregister (int ) ;
 int of_iounmap (int *,int ,int ) ;
 struct env* platform_get_drvdata (struct platform_device*) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int env_remove(struct platform_device *op)
{
 struct env *p = platform_get_drvdata(op);

 if (p) {
  sysfs_remove_group(&op->dev.kobj, &env_group);
  hwmon_device_unregister(p->hwmon_dev);
  of_iounmap(&op->resource[0], p->regs, REG_SIZE);
 }

 return 0;
}
