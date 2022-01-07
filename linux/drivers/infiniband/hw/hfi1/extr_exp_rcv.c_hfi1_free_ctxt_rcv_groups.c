
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_ctxtdata {int * groups; } ;


 int hfi1_clear_tids (struct hfi1_ctxtdata*) ;
 int hfi1_exp_tid_group_init (struct hfi1_ctxtdata*) ;
 int kfree (int *) ;

void hfi1_free_ctxt_rcv_groups(struct hfi1_ctxtdata *rcd)
{
 kfree(rcd->groups);
 rcd->groups = ((void*)0);
 hfi1_exp_tid_group_init(rcd);

 hfi1_clear_tids(rcd);
}
