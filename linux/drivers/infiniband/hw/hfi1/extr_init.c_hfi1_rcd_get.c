
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_ctxtdata {int kref; } ;


 int kref_get_unless_zero (int *) ;

int hfi1_rcd_get(struct hfi1_ctxtdata *rcd)
{
 return kref_get_unless_zero(&rcd->kref);
}
