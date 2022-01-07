
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_ctxtdata {int dummy; } ;


 int hfi1_rcd_put (struct hfi1_ctxtdata*) ;

void hfi1_free_ctxt(struct hfi1_ctxtdata *rcd)
{
 hfi1_rcd_put(rcd);
}
