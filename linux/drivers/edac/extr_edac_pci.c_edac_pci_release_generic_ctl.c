
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edac_pci_ctl_info {int dev; int mod_name; } ;


 int edac_dbg (int ,char*,int ) ;
 int edac_pci_del_device (int ) ;
 int edac_pci_free_ctl_info (struct edac_pci_ctl_info*) ;

void edac_pci_release_generic_ctl(struct edac_pci_ctl_info *pci)
{
 edac_dbg(0, "pci mod=%s\n", pci->mod_name);

 edac_pci_del_device(pci->dev);
 edac_pci_free_ctl_info(pci);
}
