
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct module {int dummy; } ;
struct TYPE_4__ {char const* mod_name; int * bus; struct module* owner; int name; } ;
struct TYPE_3__ {int list; int lock; } ;
struct hv_driver {TYPE_2__ driver; TYPE_1__ dynids; int name; } ;


 int INIT_LIST_HEAD (int *) ;
 int driver_register (TYPE_2__*) ;
 int hv_bus ;
 int pr_info (char*,int ) ;
 int spin_lock_init (int *) ;
 int vmbus_exists () ;

int __vmbus_driver_register(struct hv_driver *hv_driver, struct module *owner, const char *mod_name)
{
 int ret;

 pr_info("registering driver %s\n", hv_driver->name);

 ret = vmbus_exists();
 if (ret < 0)
  return ret;

 hv_driver->driver.name = hv_driver->name;
 hv_driver->driver.owner = owner;
 hv_driver->driver.mod_name = mod_name;
 hv_driver->driver.bus = &hv_bus;

 spin_lock_init(&hv_driver->dynids.lock);
 INIT_LIST_HEAD(&hv_driver->dynids.list);

 ret = driver_register(&hv_driver->driver);

 return ret;
}
