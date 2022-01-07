
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int flags; int * int_counter; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int QIB_BADINTR ;
 int QIB_INITTED ;
 int QIB_I_SPIOBUFAVAIL ;
 int QIB_PRESENT ;
 int kr_intclear ;
 int qib_ib_piobufavail (struct qib_devdata*) ;
 int qib_wantpiobuf_7322_intr (struct qib_devdata*,int ) ;
 int qib_write_kreg (struct qib_devdata*,int ,int ) ;
 int this_cpu_inc (int ) ;

__attribute__((used)) static irqreturn_t qib_7322bufavail(int irq, void *data)
{
 struct qib_devdata *dd = data;

 if ((dd->flags & (QIB_PRESENT | QIB_BADINTR)) != QIB_PRESENT)






  return IRQ_HANDLED;

 this_cpu_inc(*dd->int_counter);


 qib_write_kreg(dd, kr_intclear, QIB_I_SPIOBUFAVAIL);


 if (dd->flags & QIB_INITTED)
  qib_ib_piobufavail(dd);
 else
  qib_wantpiobuf_7322_intr(dd, 0);

 return IRQ_HANDLED;
}
