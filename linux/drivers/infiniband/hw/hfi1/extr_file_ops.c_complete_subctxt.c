
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hfi1_filedata {TYPE_2__* uctxt; TYPE_1__* dd; int subctxt; int rec_cpu_num; } ;
struct TYPE_5__ {int in_use_ctxts; int numa_id; int event_flags; int wait; } ;
struct TYPE_4__ {int uctxt_lock; } ;


 int ENOMEM ;
 int HFI1_CTXT_BASE_FAILED ;
 int HFI1_CTXT_BASE_UNINIT ;
 int __clear_bit (int ,int ) ;
 int hfi1_get_proc_affinity (int ) ;
 int hfi1_rcd_put (TYPE_2__*) ;
 int init_user_ctxt (struct hfi1_filedata*,TYPE_2__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int complete_subctxt(struct hfi1_filedata *fd)
{
 int ret;
 unsigned long flags;





 ret = wait_event_interruptible(
  fd->uctxt->wait,
  !test_bit(HFI1_CTXT_BASE_UNINIT, &fd->uctxt->event_flags));

 if (test_bit(HFI1_CTXT_BASE_FAILED, &fd->uctxt->event_flags))
  ret = -ENOMEM;


 if (!ret) {
  fd->rec_cpu_num = hfi1_get_proc_affinity(fd->uctxt->numa_id);
  ret = init_user_ctxt(fd, fd->uctxt);
 }

 if (ret) {
  spin_lock_irqsave(&fd->dd->uctxt_lock, flags);
  __clear_bit(fd->subctxt, fd->uctxt->in_use_ctxts);
  spin_unlock_irqrestore(&fd->dd->uctxt_lock, flags);
  hfi1_rcd_put(fd->uctxt);
  fd->uctxt = ((void*)0);
 }

 return ret;
}
