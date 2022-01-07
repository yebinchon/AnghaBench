
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edac_pci_ctl_info {int dummy; } ;


 int edac_dbg (int,char*) ;
 int edac_pci_remove_sysfs (struct edac_pci_ctl_info*) ;

void edac_pci_free_ctl_info(struct edac_pci_ctl_info *pci)
{
 edac_dbg(1, "\n");

 edac_pci_remove_sysfs(pci);
}
