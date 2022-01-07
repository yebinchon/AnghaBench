
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_devdata {int pcidev; TYPE_1__* cspec; int revision; } ;
struct TYPE_2__ {int gpio_mask; } ;


 int ChipRevMinor ;
 int GPIO_ERRINTR_MASK ;
 int QIB_DRV_NAME ;
 int Revision_R ;
 int SYM_FIELD (int ,int ,int ) ;
 int kr_gpio_mask ;
 int pci_irq_vector (int ,int ) ;
 int pci_request_irq (int ,int ,int ,int *,struct qib_devdata*,int ) ;
 int qib_6120intr ;
 int qib_dev_err (struct qib_devdata*,char*,int ,int) ;
 int qib_write_kreg (struct qib_devdata*,int ,int ) ;

__attribute__((used)) static void qib_setup_6120_interrupt(struct qib_devdata *dd)
{
 int ret;







 if (SYM_FIELD(dd->revision, Revision_R,
        ChipRevMinor) > 1) {

  dd->cspec->gpio_mask |= GPIO_ERRINTR_MASK;
  qib_write_kreg(dd, kr_gpio_mask, dd->cspec->gpio_mask);
 }

 ret = pci_request_irq(dd->pcidev, 0, qib_6120intr, ((void*)0), dd,
         QIB_DRV_NAME);
 if (ret)
  qib_dev_err(dd,
       "Couldn't setup interrupt (irq=%d): %d\n",
       pci_irq_vector(dd->pcidev, 0), ret);
}
