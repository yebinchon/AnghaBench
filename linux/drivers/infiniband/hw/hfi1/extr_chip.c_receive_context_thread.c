
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_ctxtdata {int (* do_interrupt ) (struct hfi1_ctxtdata*,int) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int check_packet_present (struct hfi1_ctxtdata*) ;
 int clear_recv_intr (struct hfi1_ctxtdata*) ;
 int force_recv_intr (struct hfi1_ctxtdata*) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int stub1 (struct hfi1_ctxtdata*,int) ;

irqreturn_t receive_context_thread(int irq, void *data)
{
 struct hfi1_ctxtdata *rcd = data;
 int present;


 (void)rcd->do_interrupt(rcd, 1);
 local_irq_disable();
 clear_recv_intr(rcd);
 present = check_packet_present(rcd);
 if (present)
  force_recv_intr(rcd);
 local_irq_enable();

 return IRQ_HANDLED;
}
