
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {unsigned int num_rcv_contexts; } ;
struct hfi1_ctxtdata {int dummy; } ;


 int dd_dev_err (struct hfi1_devdata*,char*,char*,unsigned int) ;
 int handle_user_interrupt (struct hfi1_ctxtdata*) ;
 struct hfi1_ctxtdata* hfi1_rcd_get_by_index (struct hfi1_devdata*,unsigned int) ;
 int hfi1_rcd_put (struct hfi1_ctxtdata*) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static void is_rcv_avail_int(struct hfi1_devdata *dd, unsigned int source)
{
 struct hfi1_ctxtdata *rcd;
 char *err_detail;

 if (likely(source < dd->num_rcv_contexts)) {
  rcd = hfi1_rcd_get_by_index(dd, source);
  if (rcd) {
   handle_user_interrupt(rcd);
   hfi1_rcd_put(rcd);
   return;
  }

  err_detail = "dataless";
 } else {

  err_detail = "out of range";
 }
 dd_dev_err(dd, "unexpected %s receive available context interrupt %u\n",
     err_detail, source);
}
