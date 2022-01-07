
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct rb_node {int dummy; } ;
struct hfi1_filedata {int tid_limit; int subctxt; int tid_lock; int handler; int mm; int * entry_to_rb; void* invalid_tids; scalar_t__ invalid_tid_idx; int invalid_lock; } ;
struct hfi1_devdata {TYPE_1__* pport; } ;
struct hfi1_ctxtdata {int expected_count; int subctxt_cnt; int flags; struct hfi1_devdata* dd; } ;
struct TYPE_2__ {int hfi1_wq; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HFI1_CAP_UGET_MASK (int ,int ) ;
 int TID_UNMAP ;
 int dd_dev_info (struct hfi1_devdata*,char*,int) ;
 int hfi1_mmu_rb_register (struct hfi1_filedata*,int ,int *,int ,int *) ;
 void* kcalloc (int,int,int ) ;
 int kfree (int *) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;
 int tid_rb_ops ;

int hfi1_user_exp_rcv_init(struct hfi1_filedata *fd,
      struct hfi1_ctxtdata *uctxt)
{
 struct hfi1_devdata *dd = uctxt->dd;
 int ret = 0;

 spin_lock_init(&fd->tid_lock);
 spin_lock_init(&fd->invalid_lock);

 fd->entry_to_rb = kcalloc(uctxt->expected_count,
      sizeof(struct rb_node *),
      GFP_KERNEL);
 if (!fd->entry_to_rb)
  return -ENOMEM;

 if (!HFI1_CAP_UGET_MASK(uctxt->flags, TID_UNMAP)) {
  fd->invalid_tid_idx = 0;
  fd->invalid_tids = kcalloc(uctxt->expected_count,
        sizeof(*fd->invalid_tids),
        GFP_KERNEL);
  if (!fd->invalid_tids) {
   kfree(fd->entry_to_rb);
   fd->entry_to_rb = ((void*)0);
   return -ENOMEM;
  }





  ret = hfi1_mmu_rb_register(fd, fd->mm, &tid_rb_ops,
        dd->pport->hfi1_wq,
        &fd->handler);
  if (ret) {
   dd_dev_info(dd,
        "Failed MMU notifier registration %d\n",
        ret);
   ret = 0;
  }
 }
 spin_lock(&fd->tid_lock);
 if (uctxt->subctxt_cnt && fd->handler) {
  u16 remainder;

  fd->tid_limit = uctxt->expected_count / uctxt->subctxt_cnt;
  remainder = uctxt->expected_count % uctxt->subctxt_cnt;
  if (remainder && fd->subctxt < remainder)
   fd->tid_limit++;
 } else {
  fd->tid_limit = uctxt->expected_count;
 }
 spin_unlock(&fd->tid_lock);

 return ret;
}
