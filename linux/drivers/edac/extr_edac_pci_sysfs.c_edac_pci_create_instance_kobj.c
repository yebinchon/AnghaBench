
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct edac_pci_ctl_info {int kobj; } ;


 int ENODEV ;
 int KOBJ_ADD ;
 int edac_dbg (int,char*,...) ;
 int edac_pci_top_main_kobj ;
 struct kobject* kobject_get (int ) ;
 int kobject_init_and_add (int *,int *,int ,char*,int) ;
 int kobject_put (int ) ;
 int kobject_uevent (int *,int ) ;
 int ktype_pci_instance ;

__attribute__((used)) static int edac_pci_create_instance_kobj(struct edac_pci_ctl_info *pci, int idx)
{
 struct kobject *main_kobj;
 int err;

 edac_dbg(0, "\n");





 main_kobj = kobject_get(edac_pci_top_main_kobj);
 if (!main_kobj) {
  err = -ENODEV;
  goto error_out;
 }


 err = kobject_init_and_add(&pci->kobj, &ktype_pci_instance,
       edac_pci_top_main_kobj, "pci%d", idx);
 if (err != 0) {
  edac_dbg(2, "failed to register instance pci%d\n", idx);
  kobject_put(edac_pci_top_main_kobj);
  goto error_out;
 }

 kobject_uevent(&pci->kobj, KOBJ_ADD);
 edac_dbg(1, "Register instance 'pci%d' kobject\n", idx);

 return 0;


error_out:
 return err;
}
