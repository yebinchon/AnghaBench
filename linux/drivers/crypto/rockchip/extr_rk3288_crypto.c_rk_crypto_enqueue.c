
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_crypto_info {int busy; int queue_task; int lock; int queue; } ;
struct crypto_async_request {int dummy; } ;


 int crypto_enqueue_request (int *,struct crypto_async_request*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static int rk_crypto_enqueue(struct rk_crypto_info *dev,
         struct crypto_async_request *async_req)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&dev->lock, flags);
 ret = crypto_enqueue_request(&dev->queue, async_req);
 if (dev->busy) {
  spin_unlock_irqrestore(&dev->lock, flags);
  return ret;
 }
 dev->busy = 1;
 spin_unlock_irqrestore(&dev->lock, flags);
 tasklet_schedule(&dev->queue_task);

 return ret;
}
