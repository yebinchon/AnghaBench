
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_crypto_info {int busy; int (* start ) (struct rk_crypto_info*) ;struct crypto_async_request* async_req; int (* complete ) (struct crypto_async_request*,int) ;int lock; int queue; int err; } ;
struct crypto_async_request {int (* complete ) (struct crypto_async_request*,int ) ;} ;


 int EINPROGRESS ;
 struct crypto_async_request* crypto_dequeue_request (int *) ;
 struct crypto_async_request* crypto_get_backlog (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct crypto_async_request*,int ) ;
 int stub2 (struct rk_crypto_info*) ;
 int stub3 (struct crypto_async_request*,int) ;

__attribute__((used)) static void rk_crypto_queue_task_cb(unsigned long data)
{
 struct rk_crypto_info *dev = (struct rk_crypto_info *)data;
 struct crypto_async_request *async_req, *backlog;
 unsigned long flags;
 int err = 0;

 dev->err = 0;
 spin_lock_irqsave(&dev->lock, flags);
 backlog = crypto_get_backlog(&dev->queue);
 async_req = crypto_dequeue_request(&dev->queue);

 if (!async_req) {
  dev->busy = 0;
  spin_unlock_irqrestore(&dev->lock, flags);
  return;
 }
 spin_unlock_irqrestore(&dev->lock, flags);

 if (backlog) {
  backlog->complete(backlog, -EINPROGRESS);
  backlog = ((void*)0);
 }

 dev->async_req = async_req;
 err = dev->start(dev);
 if (err)
  dev->complete(dev->async_req, err);
}
