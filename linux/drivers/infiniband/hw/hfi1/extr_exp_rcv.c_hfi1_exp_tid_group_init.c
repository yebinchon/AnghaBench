
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_ctxtdata {int tid_full_list; int tid_used_list; int tid_group_list; } ;


 int hfi1_exp_tid_set_init (int *) ;

void hfi1_exp_tid_group_init(struct hfi1_ctxtdata *rcd)
{
 hfi1_exp_tid_set_init(&rcd->tid_group_list);
 hfi1_exp_tid_set_init(&rcd->tid_used_list);
 hfi1_exp_tid_set_init(&rcd->tid_full_list);
}
