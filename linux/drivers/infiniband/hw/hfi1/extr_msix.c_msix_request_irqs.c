
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_engine {int dd; } ;
struct hfi1_devdata {int num_sdma; int n_krcv_queues; struct sdma_engine* per_sdma; } ;
struct hfi1_ctxtdata {int dummy; } ;


 int IRQ_GENERAL ;
 int enable_sdma_srcs (int ,int) ;
 int general_interrupt ;
 struct hfi1_ctxtdata* hfi1_rcd_get_by_index_safe (struct hfi1_devdata*,int) ;
 int hfi1_rcd_put (struct hfi1_ctxtdata*) ;
 int msix_request_irq (struct hfi1_devdata*,struct hfi1_devdata*,int ,int *,int ,int ) ;
 int msix_request_rcd_irq (struct hfi1_ctxtdata*) ;
 int msix_request_sdma_irq (struct sdma_engine*) ;

int msix_request_irqs(struct hfi1_devdata *dd)
{
 int i;
 int ret;

 ret = msix_request_irq(dd, dd, general_interrupt, ((void*)0), 0, IRQ_GENERAL);
 if (ret < 0)
  return ret;

 for (i = 0; i < dd->num_sdma; i++) {
  struct sdma_engine *sde = &dd->per_sdma[i];

  ret = msix_request_sdma_irq(sde);
  if (ret)
   return ret;
  enable_sdma_srcs(sde->dd, i);
 }

 for (i = 0; i < dd->n_krcv_queues; i++) {
  struct hfi1_ctxtdata *rcd = hfi1_rcd_get_by_index_safe(dd, i);

  if (rcd)
   ret = msix_request_rcd_irq(rcd);
  hfi1_rcd_put(rcd);
  if (ret)
   return ret;
 }

 return 0;
}
