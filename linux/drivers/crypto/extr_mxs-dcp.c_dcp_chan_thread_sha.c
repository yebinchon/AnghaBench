
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcp {int * lock; int * queue; } ;
struct crypto_async_request {int (* complete ) (struct crypto_async_request*,int) ;} ;


 int DCP_CHAN_HASH_SHA ;
 int EINPROGRESS ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 struct crypto_async_request* crypto_dequeue_request (int *) ;
 struct crypto_async_request* crypto_get_backlog (int *) ;
 int dcp_sha_req_to_buf (struct crypto_async_request*) ;
 struct dcp* global_sdcp ;
 int kthread_should_stop () ;
 int schedule () ;
 int set_current_state (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct crypto_async_request*,int) ;
 int stub2 (struct crypto_async_request*,int) ;

__attribute__((used)) static int dcp_chan_thread_sha(void *data)
{
 struct dcp *sdcp = global_sdcp;
 const int chan = DCP_CHAN_HASH_SHA;

 struct crypto_async_request *backlog;
 struct crypto_async_request *arq;
 int ret;

 while (!kthread_should_stop()) {
  set_current_state(TASK_INTERRUPTIBLE);

  spin_lock(&sdcp->lock[chan]);
  backlog = crypto_get_backlog(&sdcp->queue[chan]);
  arq = crypto_dequeue_request(&sdcp->queue[chan]);
  spin_unlock(&sdcp->lock[chan]);

  if (!backlog && !arq) {
   schedule();
   continue;
  }

  set_current_state(TASK_RUNNING);

  if (backlog)
   backlog->complete(backlog, -EINPROGRESS);

  if (arq) {
   ret = dcp_sha_req_to_buf(arq);
   arq->complete(arq, ret);
  }
 }

 return 0;
}
