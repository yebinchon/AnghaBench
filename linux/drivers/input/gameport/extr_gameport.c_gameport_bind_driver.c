
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct gameport_driver {int (* disconnect ) (struct gameport*) ;int description; scalar_t__ (* connect ) (struct gameport*,struct gameport_driver*) ;int driver; } ;
struct TYPE_3__ {int * driver; } ;
struct gameport {TYPE_1__ dev; int name; int phys; } ;


 int ENODEV ;
 int dev_warn (TYPE_1__*,char*,int ,int ,int ,int) ;
 int device_bind_driver (TYPE_1__*) ;
 scalar_t__ stub1 (struct gameport*,struct gameport_driver*) ;
 int stub2 (struct gameport*) ;

__attribute__((used)) static int gameport_bind_driver(struct gameport *gameport, struct gameport_driver *drv)
{
 int error;

 gameport->dev.driver = &drv->driver;
 if (drv->connect(gameport, drv)) {
  gameport->dev.driver = ((void*)0);
  return -ENODEV;
 }

 error = device_bind_driver(&gameport->dev);
 if (error) {
  dev_warn(&gameport->dev,
    "device_bind_driver() failed for %s (%s) and %s, error: %d\n",
   gameport->phys, gameport->name,
   drv->description, error);
  drv->disconnect(gameport);
  gameport->dev.driver = ((void*)0);
  return error;
 }

 return 0;
}
