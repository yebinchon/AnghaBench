
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_uverbs_file {int ucontext_lock; int hw_destroy_rwsem; int uobjects; TYPE_1__* ucontext; } ;
typedef enum rdma_remove_reason { ____Placeholder_rdma_remove_reason } rdma_remove_reason ;
struct TYPE_2__ {int closing; int cleanup_retryable; } ;


 int RDMA_REMOVE_CLOSE ;
 scalar_t__ __uverbs_cleanup_ufile (struct ib_uverbs_file*,int) ;
 int down_write (int *) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int ufile_destroy_ucontext (struct ib_uverbs_file*,int) ;
 int up_write (int *) ;

void uverbs_destroy_ufile_hw(struct ib_uverbs_file *ufile,
        enum rdma_remove_reason reason)
{
 if (reason == RDMA_REMOVE_CLOSE) {
  if (!mutex_trylock(&ufile->ucontext_lock))
   return;

 } else {
  mutex_lock(&ufile->ucontext_lock);
 }

 down_write(&ufile->hw_destroy_rwsem);





 if (!ufile->ucontext)
  goto done;

 ufile->ucontext->closing = 1;
 ufile->ucontext->cleanup_retryable = 1;
 while (!list_empty(&ufile->uobjects))
  if (__uverbs_cleanup_ufile(ufile, reason)) {




   break;
  }

 ufile->ucontext->cleanup_retryable = 0;
 if (!list_empty(&ufile->uobjects))
  __uverbs_cleanup_ufile(ufile, reason);

 ufile_destroy_ucontext(ufile, reason);

done:
 up_write(&ufile->hw_destroy_rwsem);
 mutex_unlock(&ufile->ucontext_lock);
}
