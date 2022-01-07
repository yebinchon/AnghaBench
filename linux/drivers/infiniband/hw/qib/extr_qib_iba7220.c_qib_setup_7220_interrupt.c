
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct qib_devdata {TYPE_1__* pcidev; } ;
struct TYPE_3__ {scalar_t__ msi_enabled; } ;


 int QIB_DRV_NAME ;
 int pci_irq_vector (TYPE_1__*,int ) ;
 int pci_request_irq (TYPE_1__*,int ,int ,int *,struct qib_devdata*,int ) ;
 int qib_7220intr ;
 int qib_dev_err (struct qib_devdata*,char*,char*,int ,int) ;

__attribute__((used)) static void qib_setup_7220_interrupt(struct qib_devdata *dd)
{
 int ret;

 ret = pci_request_irq(dd->pcidev, 0, qib_7220intr, ((void*)0), dd,
         QIB_DRV_NAME);
 if (ret)
  qib_dev_err(dd, "Couldn't setup %s interrupt (irq=%d): %d\n",
       dd->pcidev->msi_enabled ? "MSI" : "INTx",
       pci_irq_vector(dd->pcidev, 0), ret);
}
