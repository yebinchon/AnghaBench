
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edac_pci_ctl_info {int kobj; } ;


 int edac_dbg (int ,char*) ;
 int kobject_put (int *) ;

__attribute__((used)) static void edac_pci_unregister_sysfs_instance_kobj(
   struct edac_pci_ctl_info *pci)
{
 edac_dbg(0, "\n");





 kobject_put(&pci->kobj);
}
