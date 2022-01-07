
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ is_fw_unit (struct device*) ;
 int * unit_match (struct device*,struct device_driver*) ;

__attribute__((used)) static int fw_unit_match(struct device *dev, struct device_driver *drv)
{

 return is_fw_unit(dev) && unit_match(dev, drv) != ((void*)0);
}
