
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_driver {int dummy; } ;
struct TYPE_2__ {struct device_driver driver; } ;


 TYPE_1__ rmi_physical_driver ;

bool rmi_is_physical_driver(struct device_driver *drv)
{
 return drv == &rmi_physical_driver.driver;
}
