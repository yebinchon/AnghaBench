
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edac_pci_ctl_info {int ctl_name; int mod_name; int pci_idx; int work; scalar_t__ edac_check; int op_state; } ;
struct device {int dummy; } ;


 int EDAC_PCI ;
 int KERN_INFO ;
 int OP_OFFLINE ;
 int del_edac_pci_from_global_list (struct edac_pci_ctl_info*) ;
 int edac_dbg (int ,char*) ;
 int edac_dev_name (struct edac_pci_ctl_info*) ;
 int edac_pci_ctls_mutex ;
 int edac_printk (int ,int ,char*,int ,int ,int ,int ) ;
 int edac_stop_work (int *) ;
 struct edac_pci_ctl_info* find_edac_pci_by_dev (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct edac_pci_ctl_info *edac_pci_del_device(struct device *dev)
{
 struct edac_pci_ctl_info *pci;

 edac_dbg(0, "\n");

 mutex_lock(&edac_pci_ctls_mutex);




 pci = find_edac_pci_by_dev(dev);
 if (pci == ((void*)0)) {
  mutex_unlock(&edac_pci_ctls_mutex);
  return ((void*)0);
 }

 pci->op_state = OP_OFFLINE;

 del_edac_pci_from_global_list(pci);

 mutex_unlock(&edac_pci_ctls_mutex);

 if (pci->edac_check)
  edac_stop_work(&pci->work);

 edac_printk(KERN_INFO, EDAC_PCI,
  "Removed device %d for %s %s: DEV %s\n",
  pci->pci_idx, pci->mod_name, pci->ctl_name, edac_dev_name(pci));

 return pci;
}
