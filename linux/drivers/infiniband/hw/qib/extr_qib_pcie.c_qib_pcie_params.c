
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct qib_devdata {int lbus_width; int lbus_speed; int flags; int lbus_info; TYPE_1__* pcidev; } ;
struct TYPE_4__ {int msi_cap; scalar_t__ msi_enabled; int msix_enabled; } ;


 int PCI_EXP_LNKSTA ;
 unsigned int PCI_IRQ_LEGACY ;
 unsigned int PCI_IRQ_MSI ;
 unsigned int PCI_IRQ_MSIX ;
 int QIB_HAS_INTX ;
 int pci_alloc_irq_vectors (TYPE_1__*,int,int,unsigned int) ;
 int pci_is_pcie (TYPE_1__*) ;
 int pcie_capability_read_word (TYPE_1__*,int ,int*) ;
 int qib_cache_msi_info (struct qib_devdata*,int ) ;
 int qib_dev_err (struct qib_devdata*,char*,...) ;
 int qib_tune_pcie_caps (struct qib_devdata*) ;
 int qib_tune_pcie_coalesce (struct qib_devdata*) ;
 int snprintf (int ,int,char*,int,int) ;

int qib_pcie_params(struct qib_devdata *dd, u32 minw, u32 *nent)
{
 u16 linkstat, speed;
 int nvec;
 int maxvec;
 unsigned int flags = PCI_IRQ_MSIX | PCI_IRQ_MSI;

 if (!pci_is_pcie(dd->pcidev)) {
  qib_dev_err(dd, "Can't find PCI Express capability!\n");

  dd->lbus_width = 1;
  dd->lbus_speed = 2500;
  nvec = -1;
  goto bail;
 }

 if (dd->flags & QIB_HAS_INTX)
  flags |= PCI_IRQ_LEGACY;
 maxvec = (nent && *nent) ? *nent : 1;
 nvec = pci_alloc_irq_vectors(dd->pcidev, 1, maxvec, flags);
 if (nvec < 0)
  goto bail;






 if (nent)
  *nent = !dd->pcidev->msix_enabled ? 0 : nvec;

 if (dd->pcidev->msi_enabled)
  qib_cache_msi_info(dd, dd->pcidev->msi_cap);

 pcie_capability_read_word(dd->pcidev, PCI_EXP_LNKSTA, &linkstat);




 speed = linkstat & 0xf;
 linkstat >>= 4;
 linkstat &= 0x1f;
 dd->lbus_width = linkstat;

 switch (speed) {
 case 1:
  dd->lbus_speed = 2500;
  break;
 case 2:
  dd->lbus_speed = 5000;
  break;
 default:
  dd->lbus_speed = 2500;
  break;
 }





 if (minw && linkstat < minw)
  qib_dev_err(dd,
       "PCIe width %u (x%u HCA), performance reduced\n",
       linkstat, minw);

 qib_tune_pcie_caps(dd);

 qib_tune_pcie_coalesce(dd);

bail:

 snprintf(dd->lbus_info, sizeof(dd->lbus_info),
   "PCIe,%uMHz,x%u\n", dd->lbus_speed, dd->lbus_width);
 return nvec < 0 ? nvec : 0;
}
