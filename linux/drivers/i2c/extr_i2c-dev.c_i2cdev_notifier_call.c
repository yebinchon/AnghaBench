
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct device {int dummy; } ;




 int i2cdev_attach_adapter (struct device*,int *) ;
 int i2cdev_detach_adapter (struct device*,int *) ;

__attribute__((used)) static int i2cdev_notifier_call(struct notifier_block *nb, unsigned long action,
    void *data)
{
 struct device *dev = data;

 switch (action) {
 case 129:
  return i2cdev_attach_adapter(dev, ((void*)0));
 case 128:
  return i2cdev_detach_adapter(dev, ((void*)0));
 }

 return 0;
}
