
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct hfi1_devdata {scalar_t__ first_dyn_alloc_ctxt; } ;
struct hfi1_ctxtdata {int * do_interrupt; } ;


 scalar_t__ HFI1_CTRL_CTXT ;
 int handle_receive_interrupt_dma_rtail ;
 struct hfi1_ctxtdata* hfi1_rcd_get_by_index (struct hfi1_devdata*,scalar_t__) ;
 struct hfi1_ctxtdata* hfi1_rcd_get_by_index_safe (struct hfi1_devdata*,scalar_t__) ;
 int hfi1_rcd_put (struct hfi1_ctxtdata*) ;

__attribute__((used)) static inline void set_dma_rtail(struct hfi1_devdata *dd, u16 ctxt)
{
 struct hfi1_ctxtdata *rcd;
 u16 i;






 if (ctxt >= dd->first_dyn_alloc_ctxt) {
  rcd = hfi1_rcd_get_by_index_safe(dd, ctxt);
  if (rcd) {
   rcd->do_interrupt =
    &handle_receive_interrupt_dma_rtail;
   hfi1_rcd_put(rcd);
  }
  return;
 }

 for (i = HFI1_CTRL_CTXT + 1; i < dd->first_dyn_alloc_ctxt; i++) {
  rcd = hfi1_rcd_get_by_index(dd, i);
  if (rcd)
   rcd->do_interrupt =
    &handle_receive_interrupt_dma_rtail;
  hfi1_rcd_put(rcd);
 }
}
