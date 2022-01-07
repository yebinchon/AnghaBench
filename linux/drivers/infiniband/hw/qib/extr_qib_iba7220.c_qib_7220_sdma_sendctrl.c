
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct qib_pportdata {struct qib_devdata* dd; } ;
struct qib_devdata {int sendctrl_lock; int sendctrl; } ;


 unsigned int QIB_SDMA_SENDCTRL_OP_ENABLE ;
 unsigned int QIB_SDMA_SENDCTRL_OP_HALT ;
 unsigned int QIB_SDMA_SENDCTRL_OP_INTENABLE ;
 int SDmaEnable ;
 int SDmaHalt ;
 int SDmaIntEnable ;
 int SYM_MASK (int ,int ) ;
 int SendCtrl ;
 int kr_scratch ;
 int kr_sendctrl ;
 int qib_write_kreg (struct qib_devdata*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void qib_7220_sdma_sendctrl(struct qib_pportdata *ppd, unsigned op)
{
 struct qib_devdata *dd = ppd->dd;
 u64 set_sendctrl = 0;
 u64 clr_sendctrl = 0;

 if (op & QIB_SDMA_SENDCTRL_OP_ENABLE)
  set_sendctrl |= SYM_MASK(SendCtrl, SDmaEnable);
 else
  clr_sendctrl |= SYM_MASK(SendCtrl, SDmaEnable);

 if (op & QIB_SDMA_SENDCTRL_OP_INTENABLE)
  set_sendctrl |= SYM_MASK(SendCtrl, SDmaIntEnable);
 else
  clr_sendctrl |= SYM_MASK(SendCtrl, SDmaIntEnable);

 if (op & QIB_SDMA_SENDCTRL_OP_HALT)
  set_sendctrl |= SYM_MASK(SendCtrl, SDmaHalt);
 else
  clr_sendctrl |= SYM_MASK(SendCtrl, SDmaHalt);

 spin_lock(&dd->sendctrl_lock);

 dd->sendctrl |= set_sendctrl;
 dd->sendctrl &= ~clr_sendctrl;

 qib_write_kreg(dd, kr_sendctrl, dd->sendctrl);
 qib_write_kreg(dd, kr_scratch, 0);

 spin_unlock(&dd->sendctrl_lock);
}
