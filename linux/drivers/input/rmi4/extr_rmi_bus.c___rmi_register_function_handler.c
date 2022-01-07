
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {char const* mod_name; int name; int remove; int probe; struct module* owner; int * bus; } ;
struct rmi_function_handler {struct device_driver driver; } ;
struct module {int dummy; } ;


 int driver_register (struct device_driver*) ;
 int pr_err (char*,int ,int) ;
 int rmi_bus_type ;
 int rmi_function_probe ;
 int rmi_function_remove ;

int __rmi_register_function_handler(struct rmi_function_handler *handler,
         struct module *owner,
         const char *mod_name)
{
 struct device_driver *driver = &handler->driver;
 int error;

 driver->bus = &rmi_bus_type;
 driver->owner = owner;
 driver->mod_name = mod_name;
 driver->probe = rmi_function_probe;
 driver->remove = rmi_function_remove;

 error = driver_register(driver);
 if (error) {
  pr_err("driver_register() failed for %s, error: %d\n",
   driver->name, error);
  return error;
 }

 return 0;
}
