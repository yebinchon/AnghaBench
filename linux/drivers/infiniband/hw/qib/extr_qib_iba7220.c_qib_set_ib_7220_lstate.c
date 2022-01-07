
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct qib_pportdata {TYPE_1__* cpspec; int lflags_lock; int lflags; struct qib_devdata* dd; } ;
struct qib_devdata {int dummy; } ;
struct TYPE_2__ {int ibcctrl; } ;


 int IBA7220_IBCC_LINKCMD_SHIFT ;
 int QIBL_IB_LINK_DISABLED ;
 int QLOGIC_IB_IBCC_LINKCMD_DOWN ;
 int QLOGIC_IB_IBCC_LINKINITCMD_DISABLE ;
 int QLOGIC_IB_IBCC_LINKINITCMD_SHIFT ;
 int kr_ibcctrl ;
 int kr_scratch ;
 int qib_write_kreg (struct qib_devdata*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void qib_set_ib_7220_lstate(struct qib_pportdata *ppd, u16 linkcmd,
       u16 linitcmd)
{
 u64 mod_wd;
 struct qib_devdata *dd = ppd->dd;
 unsigned long flags;

 if (linitcmd == QLOGIC_IB_IBCC_LINKINITCMD_DISABLE) {




  spin_lock_irqsave(&ppd->lflags_lock, flags);
  ppd->lflags |= QIBL_IB_LINK_DISABLED;
  spin_unlock_irqrestore(&ppd->lflags_lock, flags);
 } else if (linitcmd || linkcmd == QLOGIC_IB_IBCC_LINKCMD_DOWN) {





  spin_lock_irqsave(&ppd->lflags_lock, flags);
  ppd->lflags &= ~QIBL_IB_LINK_DISABLED;
  spin_unlock_irqrestore(&ppd->lflags_lock, flags);
 }

 mod_wd = (linkcmd << IBA7220_IBCC_LINKCMD_SHIFT) |
  (linitcmd << QLOGIC_IB_IBCC_LINKINITCMD_SHIFT);

 qib_write_kreg(dd, kr_ibcctrl, ppd->cpspec->ibcctrl | mod_wd);

 qib_write_kreg(dd, kr_scratch, 0);
}
