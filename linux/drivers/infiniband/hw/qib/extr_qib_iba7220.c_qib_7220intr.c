
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct qib_devdata {int flags; unsigned int first_user_ctxt; int pport; int * rcd; int * int_counter; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int QIB_BADINTR ;
 int QIB_INITTED ;
 int QIB_PRESENT ;
 int QLOGIC_IB_I_BITSEXTANT ;
 int QLOGIC_IB_I_ERROR ;
 int QLOGIC_IB_I_GPIO ;
 int QLOGIC_IB_I_RCVAVAIL_MASK ;
 int QLOGIC_IB_I_RCVAVAIL_SHIFT ;
 int QLOGIC_IB_I_RCVURG_MASK ;
 int QLOGIC_IB_I_RCVURG_SHIFT ;
 int QLOGIC_IB_I_SDMAINT ;
 int QLOGIC_IB_I_SPIOBUFAVAIL ;
 int kr_intclear ;
 int kr_intstatus ;
 int qib_bad_intrstatus (struct qib_devdata*) ;
 int qib_handle_urcv (struct qib_devdata*,int) ;
 int qib_ib_piobufavail (struct qib_devdata*) ;
 int qib_kreceive (int ,int *,int *) ;
 int qib_read_kreg64 (struct qib_devdata*,int ) ;
 int qib_write_kreg (struct qib_devdata*,int ,int) ;
 int sdma_7220_intr (int ,int) ;
 int this_cpu_inc (int ) ;
 scalar_t__ unlikely (int) ;
 int unlikely_7220_intr (struct qib_devdata*,int) ;

__attribute__((used)) static irqreturn_t qib_7220intr(int irq, void *data)
{
 struct qib_devdata *dd = data;
 irqreturn_t ret;
 u64 istat;
 u64 ctxtrbits;
 u64 rmask;
 unsigned i;

 if ((dd->flags & (QIB_PRESENT | QIB_BADINTR)) != QIB_PRESENT) {






  ret = IRQ_HANDLED;
  goto bail;
 }

 istat = qib_read_kreg64(dd, kr_intstatus);

 if (unlikely(!istat)) {
  ret = IRQ_NONE;
  goto bail;
 }
 if (unlikely(istat == -1)) {
  qib_bad_intrstatus(dd);

  ret = IRQ_NONE;
  goto bail;
 }

 this_cpu_inc(*dd->int_counter);
 if (unlikely(istat & (~QLOGIC_IB_I_BITSEXTANT |
         QLOGIC_IB_I_GPIO | QLOGIC_IB_I_ERROR)))
  unlikely_7220_intr(dd, istat);







 qib_write_kreg(dd, kr_intclear, istat);






 ctxtrbits = istat &
  ((QLOGIC_IB_I_RCVAVAIL_MASK << QLOGIC_IB_I_RCVAVAIL_SHIFT) |
   (QLOGIC_IB_I_RCVURG_MASK << QLOGIC_IB_I_RCVURG_SHIFT));
 if (ctxtrbits) {
  rmask = (1ULL << QLOGIC_IB_I_RCVAVAIL_SHIFT) |
   (1ULL << QLOGIC_IB_I_RCVURG_SHIFT);
  for (i = 0; i < dd->first_user_ctxt; i++) {
   if (ctxtrbits & rmask) {
    ctxtrbits &= ~rmask;
    qib_kreceive(dd->rcd[i], ((void*)0), ((void*)0));
   }
   rmask <<= 1;
  }
  if (ctxtrbits) {
   ctxtrbits =
    (ctxtrbits >> QLOGIC_IB_I_RCVAVAIL_SHIFT) |
    (ctxtrbits >> QLOGIC_IB_I_RCVURG_SHIFT);
   qib_handle_urcv(dd, ctxtrbits);
  }
 }


 if (istat & QLOGIC_IB_I_SDMAINT)
  sdma_7220_intr(dd->pport, istat);

 if ((istat & QLOGIC_IB_I_SPIOBUFAVAIL) && (dd->flags & QIB_INITTED))
  qib_ib_piobufavail(dd);

 ret = IRQ_HANDLED;
bail:
 return ret;
}
