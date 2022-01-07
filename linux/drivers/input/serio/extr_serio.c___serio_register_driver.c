
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* mod_name; int name; struct module* owner; int * bus; } ;
struct serio_driver {int manual_bind; TYPE_1__ driver; } ;
struct module {int dummy; } ;


 int SERIO_ATTACH_DRIVER ;
 int driver_register (TYPE_1__*) ;
 int driver_unregister (TYPE_1__*) ;
 int pr_err (char*,int ,int) ;
 int serio_bus ;
 int serio_queue_event (struct serio_driver*,int *,int ) ;

int __serio_register_driver(struct serio_driver *drv, struct module *owner, const char *mod_name)
{
 bool manual_bind = drv->manual_bind;
 int error;

 drv->driver.bus = &serio_bus;
 drv->driver.owner = owner;
 drv->driver.mod_name = mod_name;





 drv->manual_bind = 1;

 error = driver_register(&drv->driver);
 if (error) {
  pr_err("driver_register() failed for %s, error: %d\n",
   drv->driver.name, error);
  return error;
 }





 if (!manual_bind) {
  drv->manual_bind = 0;
  error = serio_queue_event(drv, ((void*)0), SERIO_ATTACH_DRIVER);
  if (error) {
   driver_unregister(&drv->driver);
   return error;
  }
 }

 return 0;
}
