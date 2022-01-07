
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int * int_counter; } ;
struct hfi1_ctxtdata {int (* do_interrupt ) (struct hfi1_ctxtdata*,int ) ;struct hfi1_devdata* dd; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_WAKE_THREAD ;
 int RCV_PKT_LIMIT ;
 int aspm_ctx_disable (struct hfi1_ctxtdata*) ;
 int check_packet_present (struct hfi1_ctxtdata*) ;
 int clear_recv_intr (struct hfi1_ctxtdata*) ;
 int force_recv_intr (struct hfi1_ctxtdata*) ;
 int stub1 (struct hfi1_ctxtdata*,int ) ;
 int this_cpu_inc (int ) ;
 int trace_hfi1_receive_interrupt (struct hfi1_devdata*,struct hfi1_ctxtdata*) ;

irqreturn_t receive_context_interrupt(int irq, void *data)
{
 struct hfi1_ctxtdata *rcd = data;
 struct hfi1_devdata *dd = rcd->dd;
 int disposition;
 int present;

 trace_hfi1_receive_interrupt(dd, rcd);
 this_cpu_inc(*dd->int_counter);
 aspm_ctx_disable(rcd);


 disposition = rcd->do_interrupt(rcd, 0);






 if (disposition == RCV_PKT_LIMIT)
  return IRQ_WAKE_THREAD;







 clear_recv_intr(rcd);
 present = check_packet_present(rcd);
 if (present)
  force_recv_intr(rcd);

 return IRQ_HANDLED;
}
