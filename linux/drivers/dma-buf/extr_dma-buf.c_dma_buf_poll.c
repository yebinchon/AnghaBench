
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {struct dma_buf* private_data; } ;
struct dma_resv_list {unsigned int shared_count; int * shared; } ;
struct dma_resv {int seq; int fence_excl; int fence; } ;
struct dma_fence {int dummy; } ;
struct dma_buf_poll_cb_t {int active; int cb; } ;
struct TYPE_2__ {int lock; } ;
struct dma_buf {TYPE_1__ poll; struct dma_buf_poll_cb_t cb_shared; struct dma_buf_poll_cb_t cb_excl; struct dma_resv* resv; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLERR ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int dma_buf_poll_cb (int *,int *) ;
 int dma_fence_add_callback (struct dma_fence*,int *,int (*) (int *,int *)) ;
 int dma_fence_get_rcu (struct dma_fence*) ;
 int dma_fence_put (struct dma_fence*) ;
 int poll_requested_events (int *) ;
 int poll_wait (struct file*,TYPE_1__*,int *) ;
 void* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 unsigned int read_seqcount_begin (int *) ;
 scalar_t__ read_seqcount_retry (int *,unsigned int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static __poll_t dma_buf_poll(struct file *file, poll_table *poll)
{
 struct dma_buf *dmabuf;
 struct dma_resv *resv;
 struct dma_resv_list *fobj;
 struct dma_fence *fence_excl;
 __poll_t events;
 unsigned shared_count, seq;

 dmabuf = file->private_data;
 if (!dmabuf || !dmabuf->resv)
  return EPOLLERR;

 resv = dmabuf->resv;

 poll_wait(file, &dmabuf->poll, poll);

 events = poll_requested_events(poll) & (EPOLLIN | EPOLLOUT);
 if (!events)
  return 0;

retry:
 seq = read_seqcount_begin(&resv->seq);
 rcu_read_lock();

 fobj = rcu_dereference(resv->fence);
 if (fobj)
  shared_count = fobj->shared_count;
 else
  shared_count = 0;
 fence_excl = rcu_dereference(resv->fence_excl);
 if (read_seqcount_retry(&resv->seq, seq)) {
  rcu_read_unlock();
  goto retry;
 }

 if (fence_excl && (!(events & EPOLLOUT) || shared_count == 0)) {
  struct dma_buf_poll_cb_t *dcb = &dmabuf->cb_excl;
  __poll_t pevents = EPOLLIN;

  if (shared_count == 0)
   pevents |= EPOLLOUT;

  spin_lock_irq(&dmabuf->poll.lock);
  if (dcb->active) {
   dcb->active |= pevents;
   events &= ~pevents;
  } else
   dcb->active = pevents;
  spin_unlock_irq(&dmabuf->poll.lock);

  if (events & pevents) {
   if (!dma_fence_get_rcu(fence_excl)) {

    events &= ~pevents;
    dma_buf_poll_cb(((void*)0), &dcb->cb);
   } else if (!dma_fence_add_callback(fence_excl, &dcb->cb,
          dma_buf_poll_cb)) {
    events &= ~pevents;
    dma_fence_put(fence_excl);
   } else {




    dma_fence_put(fence_excl);
    dma_buf_poll_cb(((void*)0), &dcb->cb);
   }
  }
 }

 if ((events & EPOLLOUT) && shared_count > 0) {
  struct dma_buf_poll_cb_t *dcb = &dmabuf->cb_shared;
  int i;


  spin_lock_irq(&dmabuf->poll.lock);
  if (dcb->active)
   events &= ~EPOLLOUT;
  else
   dcb->active = EPOLLOUT;
  spin_unlock_irq(&dmabuf->poll.lock);

  if (!(events & EPOLLOUT))
   goto out;

  for (i = 0; i < shared_count; ++i) {
   struct dma_fence *fence = rcu_dereference(fobj->shared[i]);

   if (!dma_fence_get_rcu(fence)) {






    events &= ~EPOLLOUT;
    dma_buf_poll_cb(((void*)0), &dcb->cb);
    break;
   }
   if (!dma_fence_add_callback(fence, &dcb->cb,
          dma_buf_poll_cb)) {
    dma_fence_put(fence);
    events &= ~EPOLLOUT;
    break;
   }
   dma_fence_put(fence);
  }


  if (i == shared_count)
   dma_buf_poll_cb(((void*)0), &dcb->cb);
 }

out:
 rcu_read_unlock();
 return events;
}
