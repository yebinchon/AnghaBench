
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_async_request {int tfm; int (* complete ) (struct crypto_async_request*,int ) ;} ;
struct atmel_aes_dev {int flags; int is_async; struct atmel_aes_base_ctx* ctx; struct crypto_async_request* areq; int lock; int queue; } ;
struct atmel_aes_base_ctx {int (* start ) (struct atmel_aes_dev*) ;} ;


 int AES_FLAGS_BUSY ;
 int EINPROGRESS ;
 struct crypto_async_request* crypto_dequeue_request (int *) ;
 int crypto_enqueue_request (int *,struct crypto_async_request*) ;
 struct crypto_async_request* crypto_get_backlog (int *) ;
 struct atmel_aes_base_ctx* crypto_tfm_ctx (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct crypto_async_request*,int ) ;
 int stub2 (struct atmel_aes_dev*) ;

__attribute__((used)) static int atmel_aes_handle_queue(struct atmel_aes_dev *dd,
      struct crypto_async_request *new_areq)
{
 struct crypto_async_request *areq, *backlog;
 struct atmel_aes_base_ctx *ctx;
 unsigned long flags;
 bool start_async;
 int err, ret = 0;

 spin_lock_irqsave(&dd->lock, flags);
 if (new_areq)
  ret = crypto_enqueue_request(&dd->queue, new_areq);
 if (dd->flags & AES_FLAGS_BUSY) {
  spin_unlock_irqrestore(&dd->lock, flags);
  return ret;
 }
 backlog = crypto_get_backlog(&dd->queue);
 areq = crypto_dequeue_request(&dd->queue);
 if (areq)
  dd->flags |= AES_FLAGS_BUSY;
 spin_unlock_irqrestore(&dd->lock, flags);

 if (!areq)
  return ret;

 if (backlog)
  backlog->complete(backlog, -EINPROGRESS);

 ctx = crypto_tfm_ctx(areq->tfm);

 dd->areq = areq;
 dd->ctx = ctx;
 start_async = (areq != new_areq);
 dd->is_async = start_async;


 err = ctx->start(dd);
 return (start_async) ? ret : err;
}
