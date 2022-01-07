
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edac_pci_ctl_info {int kobj; int pci_idx; } ;


 int EDAC_PCI_SYMLINK ;
 int edac_dbg (int ,char*,...) ;
 int edac_pci_main_kobj_teardown () ;
 int edac_pci_unregister_sysfs_instance_kobj (struct edac_pci_ctl_info*) ;
 int sysfs_remove_link (int *,int ) ;

void edac_pci_remove_sysfs(struct edac_pci_ctl_info *pci)
{
 edac_dbg(0, "index=%d\n", pci->pci_idx);


 sysfs_remove_link(&pci->kobj, EDAC_PCI_SYMLINK);


 edac_pci_unregister_sysfs_instance_kobj(pci);





 edac_dbg(0, "calling edac_pci_main_kobj_teardown()\n");
 edac_pci_main_kobj_teardown();
}
