
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ is_virtfn; } ;
struct notifier_block {int dummy; } ;
struct dmar_pci_notify_info {int dummy; } ;


 unsigned long BUS_NOTIFY_ADD_DEVICE ;
 unsigned long BUS_NOTIFY_REMOVED_DEVICE ;
 int NOTIFY_DONE ;
 int NOTIFY_OK ;
 struct dmar_pci_notify_info* dmar_alloc_pci_notify_info (struct pci_dev*,unsigned long) ;
 int dmar_free_pci_notify_info (struct dmar_pci_notify_info*) ;
 int dmar_global_lock ;
 int dmar_pci_bus_add_dev (struct dmar_pci_notify_info*) ;
 int dmar_pci_bus_del_dev (struct dmar_pci_notify_info*) ;
 int down_write (int *) ;
 struct pci_dev* to_pci_dev (void*) ;
 int up_write (int *) ;

__attribute__((used)) static int dmar_pci_bus_notifier(struct notifier_block *nb,
     unsigned long action, void *data)
{
 struct pci_dev *pdev = to_pci_dev(data);
 struct dmar_pci_notify_info *info;




 if (pdev->is_virtfn)
  return NOTIFY_DONE;
 if (action != BUS_NOTIFY_ADD_DEVICE &&
     action != BUS_NOTIFY_REMOVED_DEVICE)
  return NOTIFY_DONE;

 info = dmar_alloc_pci_notify_info(pdev, action);
 if (!info)
  return NOTIFY_DONE;

 down_write(&dmar_global_lock);
 if (action == BUS_NOTIFY_ADD_DEVICE)
  dmar_pci_bus_add_dev(info);
 else if (action == BUS_NOTIFY_REMOVED_DEVICE)
  dmar_pci_bus_del_dev(info);
 up_write(&dmar_global_lock);

 dmar_free_pci_notify_info(info);

 return NOTIFY_OK;
}
