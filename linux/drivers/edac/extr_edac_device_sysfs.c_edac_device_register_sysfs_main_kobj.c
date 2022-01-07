
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct edac_device_ctl_info {int owner; int name; int kobj; struct bus_type* edac_subsys; } ;
struct bus_type {TYPE_1__* dev_root; } ;
struct TYPE_2__ {int kobj; } ;


 int ENODEV ;
 int KOBJ_ADD ;
 int THIS_MODULE ;
 int edac_dbg (int,char*,...) ;
 struct bus_type* edac_get_sysfs_subsys () ;
 int kobject_init_and_add (int *,int *,int *,char*,int ) ;
 int kobject_uevent (int *,int ) ;
 int ktype_device_ctrl ;
 int memset (int *,int ,int) ;
 int module_put (int ) ;
 int try_module_get (int ) ;

int edac_device_register_sysfs_main_kobj(struct edac_device_ctl_info *edac_dev)
{
 struct bus_type *edac_subsys;
 int err;

 edac_dbg(1, "\n");


 edac_subsys = edac_get_sysfs_subsys();


 edac_dev->edac_subsys = edac_subsys;


 memset(&edac_dev->kobj, 0, sizeof(struct kobject));




 edac_dev->owner = THIS_MODULE;

 if (!try_module_get(edac_dev->owner)) {
  err = -ENODEV;
  goto err_out;
 }


 err = kobject_init_and_add(&edac_dev->kobj, &ktype_device_ctrl,
       &edac_subsys->dev_root->kobj,
       "%s", edac_dev->name);
 if (err) {
  edac_dbg(1, "Failed to register '.../edac/%s'\n",
    edac_dev->name);
  goto err_kobj_reg;
 }
 kobject_uevent(&edac_dev->kobj, KOBJ_ADD);





 edac_dbg(4, "Registered '.../edac/%s' kobject\n", edac_dev->name);

 return 0;


err_kobj_reg:
 module_put(edac_dev->owner);

err_out:
 return err;
}
