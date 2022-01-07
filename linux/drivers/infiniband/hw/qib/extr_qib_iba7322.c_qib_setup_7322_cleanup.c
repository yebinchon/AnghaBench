
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct qib_devdata {int flags; int num_pports; TYPE_4__* cspec; TYPE_3__* pport; TYPE_1__* pcidev; } ;
struct TYPE_8__ {int dca_ctrl; int gpio_mask; int gpio_lock; int msix_entries; int sendibchk; int sendgrhchk; int sendchkenable; int cntrs; } ;
struct TYPE_7__ {TYPE_2__* cpspec; } ;
struct TYPE_6__ {int portcntrs; } ;
struct TYPE_5__ {int dev; } ;


 int DCACtrlA ;
 int KREG_IDX (int ) ;
 int QIB_DCA_ENABLED ;
 int QIB_HAS_QSFP ;
 int QSFP_GPIO_MOD_PRS_N ;
 int QSFP_GPIO_PORT2_SHIFT ;
 int dca_remove_requester (int *) ;
 int kfree (int ) ;
 int kr_gpio_mask ;
 int qib_7322_free_irq (struct qib_devdata*) ;
 int qib_write_kreg (struct qib_devdata*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void qib_setup_7322_cleanup(struct qib_devdata *dd)
{
 int i;
 qib_7322_free_irq(dd);
 kfree(dd->cspec->cntrs);
 kfree(dd->cspec->sendchkenable);
 kfree(dd->cspec->sendgrhchk);
 kfree(dd->cspec->sendibchk);
 kfree(dd->cspec->msix_entries);
 for (i = 0; i < dd->num_pports; i++) {
  unsigned long flags;
  u32 mask = QSFP_GPIO_MOD_PRS_N |
   (QSFP_GPIO_MOD_PRS_N << QSFP_GPIO_PORT2_SHIFT);

  kfree(dd->pport[i].cpspec->portcntrs);
  if (dd->flags & QIB_HAS_QSFP) {
   spin_lock_irqsave(&dd->cspec->gpio_lock, flags);
   dd->cspec->gpio_mask &= ~mask;
   qib_write_kreg(dd, kr_gpio_mask, dd->cspec->gpio_mask);
   spin_unlock_irqrestore(&dd->cspec->gpio_lock, flags);
  }
 }
}
