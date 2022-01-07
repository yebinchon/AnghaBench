
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct module {int dummy; } ;
struct TYPE_2__ {char const* mod_name; struct module* owner; int * bus; int name; } ;
struct hid_driver {TYPE_1__ driver; int dyn_lock; int dyn_list; int name; } ;


 int INIT_LIST_HEAD (int *) ;
 int __hid_bus_driver_added ;
 int bus_for_each_drv (int *,int *,int *,int ) ;
 int driver_register (TYPE_1__*) ;
 int hid_bus_type ;
 int spin_lock_init (int *) ;

int __hid_register_driver(struct hid_driver *hdrv, struct module *owner,
  const char *mod_name)
{
 int ret;

 hdrv->driver.name = hdrv->name;
 hdrv->driver.bus = &hid_bus_type;
 hdrv->driver.owner = owner;
 hdrv->driver.mod_name = mod_name;

 INIT_LIST_HEAD(&hdrv->dyn_list);
 spin_lock_init(&hdrv->dyn_lock);

 ret = driver_register(&hdrv->driver);

 if (ret == 0)
  bus_for_each_drv(&hid_bus_type, ((void*)0), ((void*)0),
     __hid_bus_driver_added);

 return ret;
}
