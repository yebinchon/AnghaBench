
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsc200x {int vio; } ;
struct device {int kobj; } ;


 struct tsc200x* dev_get_drvdata (struct device*) ;
 int regulator_disable (int ) ;
 int sysfs_remove_group (int *,int *) ;
 int tsc200x_attr_group ;

int tsc200x_remove(struct device *dev)
{
 struct tsc200x *ts = dev_get_drvdata(dev);

 sysfs_remove_group(&dev->kobj, &tsc200x_attr_group);

 regulator_disable(ts->vio);

 return 0;
}
