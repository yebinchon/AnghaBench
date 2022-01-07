
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int device_release_driver (struct device*) ;

__attribute__((used)) static int intel_th_child_remove(struct device *dev, void *data)
{
 device_release_driver(dev);

 return 0;
}
