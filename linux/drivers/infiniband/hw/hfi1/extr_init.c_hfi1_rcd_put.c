
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_ctxtdata {int kref; } ;


 int hfi1_rcd_free ;
 int kref_put (int *,int ) ;

int hfi1_rcd_put(struct hfi1_ctxtdata *rcd)
{
 if (rcd)
  return kref_put(&rcd->kref, hfi1_rcd_free);

 return 0;
}
