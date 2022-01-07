
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qce_device {int result; int done_tasklet; int lock; struct crypto_async_request* req; int queue; } ;
struct crypto_async_request {int (* complete ) (struct crypto_async_request*,int ) ;} ;


 int EINPROGRESS ;
 struct crypto_async_request* crypto_dequeue_request (int *) ;
 int crypto_enqueue_request (int *,struct crypto_async_request*) ;
 struct crypto_async_request* crypto_get_backlog (int *) ;
 int qce_handle_request (struct crypto_async_request*) ;
 int spin_lock_bh (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_bh (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct crypto_async_request*,int ) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static int qce_handle_queue(struct qce_device *qce,
       struct crypto_async_request *req)
{
 struct crypto_async_request *async_req, *backlog;
 unsigned long flags;
 int ret = 0, err;

 spin_lock_irqsave(&qce->lock, flags);

 if (req)
  ret = crypto_enqueue_request(&qce->queue, req);


 if (qce->req) {
  spin_unlock_irqrestore(&qce->lock, flags);
  return ret;
 }

 backlog = crypto_get_backlog(&qce->queue);
 async_req = crypto_dequeue_request(&qce->queue);
 if (async_req)
  qce->req = async_req;

 spin_unlock_irqrestore(&qce->lock, flags);

 if (!async_req)
  return ret;

 if (backlog) {
  spin_lock_bh(&qce->lock);
  backlog->complete(backlog, -EINPROGRESS);
  spin_unlock_bh(&qce->lock);
 }

 err = qce_handle_request(async_req);
 if (err) {
  qce->result = err;
  tasklet_schedule(&qce->done_tasklet);
 }

 return ret;
}
