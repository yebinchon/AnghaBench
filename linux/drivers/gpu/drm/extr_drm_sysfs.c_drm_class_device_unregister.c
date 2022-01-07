
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 void device_unregister (struct device*) ;

void drm_class_device_unregister(struct device *dev)
{
 return device_unregister(dev);
}
