
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct qib_devdata {unsigned int pioavregs; int* pioavailkernel; int* pioavailshadow; int pioavail_lock; int * pioavailregs_dma; } ;


 int QLOGIC_IB_SENDPIOAVAIL_BUSY_SHIFT ;
 int le64_to_cpu (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void update_send_bufs(struct qib_devdata *dd)
{
 unsigned long flags;
 unsigned i;
 const unsigned piobregs = dd->pioavregs;
 if (!dd->pioavailregs_dma)
  return;
 spin_lock_irqsave(&dd->pioavail_lock, flags);
 for (i = 0; i < piobregs; i++) {
  u64 pchbusy, pchg, piov, pnew;

  piov = le64_to_cpu(dd->pioavailregs_dma[i]);
  pchg = dd->pioavailkernel[i] &
   ~(dd->pioavailshadow[i] ^ piov);
  pchbusy = pchg << QLOGIC_IB_SENDPIOAVAIL_BUSY_SHIFT;
  if (pchg && (pchbusy & dd->pioavailshadow[i])) {
   pnew = dd->pioavailshadow[i] & ~pchbusy;
   pnew |= piov & pchbusy;
   dd->pioavailshadow[i] = pnew;
  }
 }
 spin_unlock_irqrestore(&dd->pioavail_lock, flags);
}
