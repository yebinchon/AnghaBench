
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct bus_type {TYPE_1__* dev_root; } ;
struct TYPE_2__ {int kobj; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KOBJ_ADD ;
 int THIS_MODULE ;
 int atomic_dec (int *) ;
 int atomic_inc_return (int *) ;
 int edac_dbg (int,char*) ;
 struct bus_type* edac_get_sysfs_subsys () ;
 int edac_pci_sysfs_refcount ;
 int edac_pci_top_main_kobj ;
 int kfree (int ) ;
 int kobject_init_and_add (int ,int *,int *,char*) ;
 int kobject_uevent (int ,int ) ;
 int ktype_edac_pci_main_kobj ;
 int kzalloc (int,int ) ;
 int module_put (int ) ;
 int try_module_get (int ) ;

__attribute__((used)) static int edac_pci_main_kobj_setup(void)
{
 int err;
 struct bus_type *edac_subsys;

 edac_dbg(0, "\n");


 if (atomic_inc_return(&edac_pci_sysfs_refcount) != 1)
  return 0;




 edac_subsys = edac_get_sysfs_subsys();





 if (!try_module_get(THIS_MODULE)) {
  edac_dbg(1, "try_module_get() failed\n");
  err = -ENODEV;
  goto decrement_count_fail;
 }

 edac_pci_top_main_kobj = kzalloc(sizeof(struct kobject), GFP_KERNEL);
 if (!edac_pci_top_main_kobj) {
  edac_dbg(1, "Failed to allocate\n");
  err = -ENOMEM;
  goto kzalloc_fail;
 }


 err = kobject_init_and_add(edac_pci_top_main_kobj,
       &ktype_edac_pci_main_kobj,
       &edac_subsys->dev_root->kobj, "pci");
 if (err) {
  edac_dbg(1, "Failed to register '.../edac/pci'\n");
  goto kobject_init_and_add_fail;
 }





 kobject_uevent(edac_pci_top_main_kobj, KOBJ_ADD);
 edac_dbg(1, "Registered '.../edac/pci' kobject\n");

 return 0;


kobject_init_and_add_fail:
 kfree(edac_pci_top_main_kobj);

kzalloc_fail:
 module_put(THIS_MODULE);

decrement_count_fail:

 atomic_dec(&edac_pci_sysfs_refcount);

 return err;
}
