
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hfi1_msix_entry {int irq; } ;
struct TYPE_4__ {struct hfi1_msix_entry* msix_entries; } ;
struct TYPE_3__ {int num_ctxt; struct hfi1_ctxtdata** ctxt; } ;
struct hfi1_devdata {TYPE_2__ msix_info; TYPE_1__ vnic; } ;
struct hfi1_ctxtdata {size_t msix_intr; } ;


 int synchronize_irq (int ) ;

void msix_vnic_synchronize_irq(struct hfi1_devdata *dd)
{
 int i;

 for (i = 0; i < dd->vnic.num_ctxt; i++) {
  struct hfi1_ctxtdata *rcd = dd->vnic.ctxt[i];
  struct hfi1_msix_entry *me;

  me = &dd->msix_info.msix_entries[rcd->msix_intr];

  synchronize_irq(me->irq);
 }
}
