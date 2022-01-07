
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hfi1_msix_entry {int dummy; } ;
struct TYPE_2__ {int max_requested; struct hfi1_msix_entry* msix_entries; } ;
struct hfi1_devdata {int pcidev; TYPE_1__ msix_info; } ;


 int kfree (struct hfi1_msix_entry*) ;
 int msix_free_irq (struct hfi1_devdata*,int) ;
 int pci_free_irq_vectors (int ) ;

void msix_clean_up_interrupts(struct hfi1_devdata *dd)
{
 int i;
 struct hfi1_msix_entry *me = dd->msix_info.msix_entries;


 for (i = 0; i < dd->msix_info.max_requested; i++, me++)
  msix_free_irq(dd, i);


 kfree(dd->msix_info.msix_entries);
 dd->msix_info.msix_entries = ((void*)0);
 dd->msix_info.max_requested = 0;

 pci_free_irq_vectors(dd->pcidev);
}
