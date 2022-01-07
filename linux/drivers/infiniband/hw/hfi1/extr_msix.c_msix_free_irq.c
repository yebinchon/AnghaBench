
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct hfi1_msix_entry {int * arg; } ;
struct TYPE_2__ {size_t max_requested; int msix_lock; int in_use_msix; struct hfi1_msix_entry* msix_entries; } ;
struct hfi1_devdata {TYPE_1__ msix_info; int pcidev; } ;


 int __clear_bit (size_t,int ) ;
 int hfi1_put_irq_affinity (struct hfi1_devdata*,struct hfi1_msix_entry*) ;
 int pci_free_irq (int ,size_t,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void msix_free_irq(struct hfi1_devdata *dd, u8 msix_intr)
{
 struct hfi1_msix_entry *me;

 if (msix_intr >= dd->msix_info.max_requested)
  return;

 me = &dd->msix_info.msix_entries[msix_intr];

 if (!me->arg)
  return;

 hfi1_put_irq_affinity(dd, me);
 pci_free_irq(dd->pcidev, msix_intr, me->arg);

 me->arg = ((void*)0);

 spin_lock(&dd->msix_info.msix_lock);
 __clear_bit(msix_intr, dd->msix_info.in_use_msix);
 spin_unlock(&dd->msix_info.msix_lock);
}
