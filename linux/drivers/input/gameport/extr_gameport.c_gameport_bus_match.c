
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gameport_driver {int ignore; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 struct gameport_driver* to_gameport_driver (struct device_driver*) ;

__attribute__((used)) static int gameport_bus_match(struct device *dev, struct device_driver *drv)
{
 struct gameport_driver *gameport_drv = to_gameport_driver(drv);

 return !gameport_drv->ignore;
}
