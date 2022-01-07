
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct qib_devdata {TYPE_1__* cspec; } ;
struct TYPE_2__ {int sdepb_lock; } ;


 int EPB_DATA_MASK ;
 int EPB_RD ;
 int EPB_TRANS_RDY ;
 int EPB_TRANS_TRIES ;



 int epb_access (struct qib_devdata*,int,int) ;
 int epb_trans (struct qib_devdata*,int ,int,int*) ;
 int kr_ibsd_epb_transaction_reg ;
 int kr_pciesd_epb_transaction_reg ;
 int qib_read_kreg32 (struct qib_devdata*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int qib_sd7220_reg_mod(struct qib_devdata *dd, int sdnum, u32 loc,
         u32 wd, u32 mask)
{
 u16 trans;
 u64 transval;
 int owned;
 int tries, ret;
 unsigned long flags;

 switch (sdnum) {
 case 130:
  trans = kr_ibsd_epb_transaction_reg;
  break;

 case 129:
 case 128:
  trans = kr_pciesd_epb_transaction_reg;
  break;

 default:
  return -1;
 }





 spin_lock_irqsave(&dd->cspec->sdepb_lock, flags);

 owned = epb_access(dd, sdnum, 1);
 if (owned < 0) {
  spin_unlock_irqrestore(&dd->cspec->sdepb_lock, flags);
  return -1;
 }
 ret = 0;
 for (tries = EPB_TRANS_TRIES; tries; --tries) {
  transval = qib_read_kreg32(dd, trans);
  if (transval & EPB_TRANS_RDY)
   break;
  udelay(5);
 }

 if (tries > 0) {
  tries = 1;
  if (mask != 0xFF) {




   transval = loc | EPB_RD;
   tries = epb_trans(dd, trans, transval, &transval);
  }
  if (tries > 0 && mask != 0) {



   wd = (wd & mask) | (transval & ~mask);
   transval = loc | (wd & EPB_DATA_MASK);
   tries = epb_trans(dd, trans, transval, &transval);
  }
 }





 if (epb_access(dd, sdnum, -1) < 0)
  ret = -1;
 else
  ret = transval & EPB_DATA_MASK;

 spin_unlock_irqrestore(&dd->cspec->sdepb_lock, flags);
 if (tries <= 0)
  ret = -1;
 return ret;
}
