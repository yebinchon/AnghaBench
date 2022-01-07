
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
struct device_driver {char const* name; char const* mod_name; int * bus; struct module* owner; } ;
struct dax_device_driver {scalar_t__ match_always; int ids; struct device_driver drv; } ;


 int EINVAL ;
 int INIT_LIST_HEAD (int *) ;
 int WARN_ON (int) ;
 int dax_bus_lock ;
 int dax_bus_type ;
 int driver_register (struct device_driver*) ;
 int match_always_count ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int __dax_driver_register(struct dax_device_driver *dax_drv,
  struct module *module, const char *mod_name)
{
 struct device_driver *drv = &dax_drv->drv;
 int rc = 0;

 INIT_LIST_HEAD(&dax_drv->ids);
 drv->owner = module;
 drv->name = mod_name;
 drv->mod_name = mod_name;
 drv->bus = &dax_bus_type;


 mutex_lock(&dax_bus_lock);
 match_always_count += dax_drv->match_always;
 if (match_always_count > 1) {
  match_always_count--;
  WARN_ON(1);
  rc = -EINVAL;
 }
 mutex_unlock(&dax_bus_lock);
 if (rc)
  return rc;
 return driver_register(drv);
}
