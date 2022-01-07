
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct qib_devdata {int pcidev; TYPE_2__* cspec; } ;
struct TYPE_4__ {unsigned long long main_int_mask; int num_msix_entries; TYPE_1__* msix_entries; } ;
struct TYPE_3__ {struct qib_devdata* arg; int mask; } ;


 int free_cpumask_var (int ) ;
 int irq_set_affinity_hint (int ,int *) ;
 int kr_intgranted ;
 int pci_free_irq (int ,int,struct qib_devdata*) ;
 int pci_free_irq_vectors (int ) ;
 int pci_irq_vector (int ,int) ;
 scalar_t__ qib_read_kreg64 (struct qib_devdata*,int ) ;
 int qib_write_kreg (struct qib_devdata*,int ,scalar_t__) ;
 int reset_dca_notifier (struct qib_devdata*,int) ;

__attribute__((used)) static void qib_7322_free_irq(struct qib_devdata *dd)
{
 u64 intgranted;
 int i;

 dd->cspec->main_int_mask = ~0ULL;

 for (i = 0; i < dd->cspec->num_msix_entries; i++) {

  if (dd->cspec->msix_entries[i].arg) {



   irq_set_affinity_hint(pci_irq_vector(dd->pcidev, i),
           ((void*)0));
   free_cpumask_var(dd->cspec->msix_entries[i].mask);
   pci_free_irq(dd->pcidev, i,
         dd->cspec->msix_entries[i].arg);
  }
 }


 if (!dd->cspec->num_msix_entries)
  pci_free_irq(dd->pcidev, 0, dd);
 else
  dd->cspec->num_msix_entries = 0;

 pci_free_irq_vectors(dd->pcidev);


 intgranted = qib_read_kreg64(dd, kr_intgranted);
 if (intgranted)
  qib_write_kreg(dd, kr_intgranted, intgranted);
}
