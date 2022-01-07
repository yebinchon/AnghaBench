
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int name; } ;
struct device {int dummy; } ;


 int dev_name (struct device*) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int host1x_device_match(struct device *dev, struct device_driver *drv)
{
 return strcmp(dev_name(dev), drv->name) == 0;
}
