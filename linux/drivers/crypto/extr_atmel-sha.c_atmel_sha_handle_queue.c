
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_async_request {int tfm; int (* complete ) (struct crypto_async_request*,int ) ;} ;
struct atmel_sha_dev {int flags; int is_async; int force_complete; struct ahash_request* req; int lock; int queue; } ;
struct atmel_sha_ctx {int (* start ) (struct atmel_sha_dev*) ;} ;
struct ahash_request {int dummy; } ;


 int EINPROGRESS ;
 int SHA_FLAGS_BUSY ;
 int ahash_enqueue_request (int *,struct ahash_request*) ;
 struct ahash_request* ahash_request_cast (struct crypto_async_request*) ;
 struct crypto_async_request* crypto_dequeue_request (int *) ;
 struct crypto_async_request* crypto_get_backlog (int *) ;
 struct atmel_sha_ctx* crypto_tfm_ctx (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct crypto_async_request*,int ) ;
 int stub2 (struct atmel_sha_dev*) ;

__attribute__((used)) static int atmel_sha_handle_queue(struct atmel_sha_dev *dd,
      struct ahash_request *req)
{
 struct crypto_async_request *async_req, *backlog;
 struct atmel_sha_ctx *ctx;
 unsigned long flags;
 bool start_async;
 int err = 0, ret = 0;

 spin_lock_irqsave(&dd->lock, flags);
 if (req)
  ret = ahash_enqueue_request(&dd->queue, req);

 if (SHA_FLAGS_BUSY & dd->flags) {
  spin_unlock_irqrestore(&dd->lock, flags);
  return ret;
 }

 backlog = crypto_get_backlog(&dd->queue);
 async_req = crypto_dequeue_request(&dd->queue);
 if (async_req)
  dd->flags |= SHA_FLAGS_BUSY;

 spin_unlock_irqrestore(&dd->lock, flags);

 if (!async_req)
  return ret;

 if (backlog)
  backlog->complete(backlog, -EINPROGRESS);

 ctx = crypto_tfm_ctx(async_req->tfm);

 dd->req = ahash_request_cast(async_req);
 start_async = (dd->req != req);
 dd->is_async = start_async;
 dd->force_complete = 0;


 err = ctx->start(dd);
 return (start_async) ? ret : err;
}
