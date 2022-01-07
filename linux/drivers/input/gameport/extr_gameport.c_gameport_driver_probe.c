
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gameport_driver {int (* connect ) (struct gameport*,struct gameport_driver*) ;} ;
struct gameport {int drv; } ;
struct device {int driver; } ;


 int ENODEV ;
 int stub1 (struct gameport*,struct gameport_driver*) ;
 struct gameport_driver* to_gameport_driver (int ) ;
 struct gameport* to_gameport_port (struct device*) ;

__attribute__((used)) static int gameport_driver_probe(struct device *dev)
{
 struct gameport *gameport = to_gameport_port(dev);
 struct gameport_driver *drv = to_gameport_driver(dev->driver);

 drv->connect(gameport, drv);
 return gameport->drv ? 0 : -ENODEV;
}
