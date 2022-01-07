
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int node; } ;
struct sync_file {int fence; int wq; TYPE_1__ cb; int flags; } ;
struct file {struct sync_file* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int POLL_ENABLED ;
 scalar_t__ dma_fence_add_callback (int ,TYPE_1__*,int ) ;
 scalar_t__ dma_fence_is_signaled (int ) ;
 int fence_check_cb_func ;
 scalar_t__ list_empty (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 int test_and_set_bit (int ,int *) ;
 int wake_up_all (int *) ;

__attribute__((used)) static __poll_t sync_file_poll(struct file *file, poll_table *wait)
{
 struct sync_file *sync_file = file->private_data;

 poll_wait(file, &sync_file->wq, wait);

 if (list_empty(&sync_file->cb.node) &&
     !test_and_set_bit(POLL_ENABLED, &sync_file->flags)) {
  if (dma_fence_add_callback(sync_file->fence, &sync_file->cb,
        fence_check_cb_func) < 0)
   wake_up_all(&sync_file->wq);
 }

 return dma_fence_is_signaled(sync_file->fence) ? EPOLLIN : 0;
}
