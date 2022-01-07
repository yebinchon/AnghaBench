
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct hfi1_devdata {scalar_t__ num_rcv_contexts; } ;
struct hfi1_ctxtdata {int dummy; } ;


 struct hfi1_ctxtdata* hfi1_rcd_get_by_index (struct hfi1_devdata*,scalar_t__) ;

struct hfi1_ctxtdata *hfi1_rcd_get_by_index_safe(struct hfi1_devdata *dd,
       u16 ctxt)
{
 if (ctxt < dd->num_rcv_contexts)
  return hfi1_rcd_get_by_index(dd, ctxt);

 return ((void*)0);
}
