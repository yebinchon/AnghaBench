
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct edac_pci_ctl_info {int pci_idx; TYPE_1__* dev; struct kobject kobj; } ;
struct TYPE_2__ {int kobj; } ;


 int EDAC_PCI_SYMLINK ;
 int edac_dbg (int ,char*,int) ;
 int edac_pci_create_instance_kobj (struct edac_pci_ctl_info*,int) ;
 int edac_pci_main_kobj_setup () ;
 int edac_pci_main_kobj_teardown () ;
 int edac_pci_unregister_sysfs_instance_kobj (struct edac_pci_ctl_info*) ;
 int sysfs_create_link (struct kobject*,int *,int ) ;

int edac_pci_create_sysfs(struct edac_pci_ctl_info *pci)
{
 int err;
 struct kobject *edac_kobj = &pci->kobj;

 edac_dbg(0, "idx=%d\n", pci->pci_idx);


 err = edac_pci_main_kobj_setup();
 if (err)
  return err;


 err = edac_pci_create_instance_kobj(pci, pci->pci_idx);
 if (err)
  goto unregister_cleanup;

 err = sysfs_create_link(edac_kobj, &pci->dev->kobj, EDAC_PCI_SYMLINK);
 if (err) {
  edac_dbg(0, "sysfs_create_link() returned err= %d\n", err);
  goto symlink_fail;
 }

 return 0;


symlink_fail:
 edac_pci_unregister_sysfs_instance_kobj(pci);

unregister_cleanup:
 edac_pci_main_kobj_teardown();

 return err;
}
