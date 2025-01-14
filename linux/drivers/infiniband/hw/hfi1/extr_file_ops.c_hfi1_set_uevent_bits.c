
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct hfi1_pportdata {struct hfi1_devdata* dd; } ;
struct hfi1_devdata {unsigned long* events; scalar_t__ first_dyn_alloc_ctxt; scalar_t__ num_rcv_contexts; } ;
struct hfi1_ctxtdata {int subctxt_cnt; } ;


 int EINVAL ;
 struct hfi1_ctxtdata* hfi1_rcd_get_by_index (struct hfi1_devdata*,scalar_t__) ;
 int hfi1_rcd_put (struct hfi1_ctxtdata*) ;
 int set_bit (int const,unsigned long*) ;
 int uctxt_offset (struct hfi1_ctxtdata*) ;

int hfi1_set_uevent_bits(struct hfi1_pportdata *ppd, const int evtbit)
{
 struct hfi1_ctxtdata *uctxt;
 struct hfi1_devdata *dd = ppd->dd;
 u16 ctxt;

 if (!dd->events)
  return -EINVAL;

 for (ctxt = dd->first_dyn_alloc_ctxt; ctxt < dd->num_rcv_contexts;
      ctxt++) {
  uctxt = hfi1_rcd_get_by_index(dd, ctxt);
  if (uctxt) {
   unsigned long *evs;
   int i;




   evs = dd->events + uctxt_offset(uctxt);
   set_bit(evtbit, evs);
   for (i = 1; i < uctxt->subctxt_cnt; i++)
    set_bit(evtbit, evs + i);
   hfi1_rcd_put(uctxt);
  }
 }

 return 0;
}
