
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hfi1_ctxtdata {int ctxt; int ireg; int imask; int msix_intr; int dd; } ;


 int IRQ_RCVCTXT ;
 int IS_RCVAVAIL_START ;
 int msix_request_irq (int ,struct hfi1_ctxtdata*,int ,int ,int,int ) ;
 int receive_context_interrupt ;
 int receive_context_thread ;
 int remap_intr (int ,int,int) ;

int msix_request_rcd_irq(struct hfi1_ctxtdata *rcd)
{
 int nr;

 nr = msix_request_irq(rcd->dd, rcd, receive_context_interrupt,
         receive_context_thread, rcd->ctxt, IRQ_RCVCTXT);
 if (nr < 0)
  return nr;





 rcd->ireg = (IS_RCVAVAIL_START + rcd->ctxt) / 64;
 rcd->imask = ((u64)1) << ((IS_RCVAVAIL_START + rcd->ctxt) % 64);
 rcd->msix_intr = nr;
 remap_intr(rcd->dd, IS_RCVAVAIL_START + rcd->ctxt, nr);

 return 0;
}
