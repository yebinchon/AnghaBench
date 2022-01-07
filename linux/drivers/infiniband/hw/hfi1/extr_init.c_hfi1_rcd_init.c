
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_ctxtdata {int kref; } ;


 int kref_init (int *) ;

__attribute__((used)) static void hfi1_rcd_init(struct hfi1_ctxtdata *rcd)
{
 kref_init(&rcd->kref);
}
