
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct module {int dummy; } ;
struct TYPE_3__ {char const* mod_name; int name; struct module* owner; int * bus; } ;
struct gameport_driver {int ignore; TYPE_1__ driver; } ;


 int GAMEPORT_ATTACH_DRIVER ;
 int driver_register (TYPE_1__*) ;
 int driver_unregister (TYPE_1__*) ;
 int gameport_bus ;
 int gameport_queue_event (struct gameport_driver*,int *,int ) ;
 int pr_err (char*,int ,int) ;

int __gameport_register_driver(struct gameport_driver *drv, struct module *owner,
    const char *mod_name)
{
 int error;

 drv->driver.bus = &gameport_bus;
 drv->driver.owner = owner;
 drv->driver.mod_name = mod_name;





 drv->ignore = 1;

 error = driver_register(&drv->driver);
 if (error) {
  pr_err("driver_register() failed for %s, error: %d\n",
   drv->driver.name, error);
  return error;
 }




 drv->ignore = 0;
 error = gameport_queue_event(drv, ((void*)0), GAMEPORT_ATTACH_DRIVER);
 if (error) {
  driver_unregister(&drv->driver);
  return error;
 }

 return 0;
}
