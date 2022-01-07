
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_filedata {int * entry_to_rb; int * invalid_tids; scalar_t__ handler; struct hfi1_ctxtdata* uctxt; } ;
struct hfi1_ctxtdata {int tid_used_list; int tid_full_list; } ;


 int EXP_TID_SET_EMPTY (int ) ;
 int hfi1_mmu_rb_unregister (scalar_t__) ;
 int kfree (int *) ;
 int unlock_exp_tids (struct hfi1_ctxtdata*,int *,struct hfi1_filedata*) ;

void hfi1_user_exp_rcv_free(struct hfi1_filedata *fd)
{
 struct hfi1_ctxtdata *uctxt = fd->uctxt;





 if (fd->handler) {
  hfi1_mmu_rb_unregister(fd->handler);
 } else {
  if (!EXP_TID_SET_EMPTY(uctxt->tid_full_list))
   unlock_exp_tids(uctxt, &uctxt->tid_full_list, fd);
  if (!EXP_TID_SET_EMPTY(uctxt->tid_used_list))
   unlock_exp_tids(uctxt, &uctxt->tid_used_list, fd);
 }

 kfree(fd->invalid_tids);
 fd->invalid_tids = ((void*)0);

 kfree(fd->entry_to_rb);
 fd->entry_to_rb = ((void*)0);
}
