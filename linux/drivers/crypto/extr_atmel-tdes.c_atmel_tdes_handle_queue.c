
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_async_request {int (* complete ) (struct crypto_async_request*,int ) ;} ;
struct atmel_tdes_reqctx {int mode; } ;
struct atmel_tdes_dev {int flags; int queue_task; struct atmel_tdes_ctx* ctx; int out_sg; scalar_t__ out_offset; int in_sg; scalar_t__ in_offset; int total; struct ablkcipher_request* req; int lock; int queue; } ;
struct atmel_tdes_ctx {struct atmel_tdes_dev* dd; } ;
struct ablkcipher_request {int dst; int src; int nbytes; } ;


 int EINPROGRESS ;
 int TDES_FLAGS_BUSY ;
 int TDES_FLAGS_MODE_MASK ;
 int ablkcipher_enqueue_request (int *,struct ablkcipher_request*) ;
 struct ablkcipher_request* ablkcipher_request_cast (struct crypto_async_request*) ;
 struct atmel_tdes_reqctx* ablkcipher_request_ctx (struct ablkcipher_request*) ;
 int atmel_tdes_crypt_start (struct atmel_tdes_dev*) ;
 int atmel_tdes_finish_req (struct atmel_tdes_dev*,int) ;
 int atmel_tdes_write_ctrl (struct atmel_tdes_dev*) ;
 struct atmel_tdes_ctx* crypto_ablkcipher_ctx (int ) ;
 int crypto_ablkcipher_reqtfm (struct ablkcipher_request*) ;
 struct crypto_async_request* crypto_dequeue_request (int *) ;
 struct crypto_async_request* crypto_get_backlog (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct crypto_async_request*,int ) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static int atmel_tdes_handle_queue(struct atmel_tdes_dev *dd,
          struct ablkcipher_request *req)
{
 struct crypto_async_request *async_req, *backlog;
 struct atmel_tdes_ctx *ctx;
 struct atmel_tdes_reqctx *rctx;
 unsigned long flags;
 int err, ret = 0;

 spin_lock_irqsave(&dd->lock, flags);
 if (req)
  ret = ablkcipher_enqueue_request(&dd->queue, req);
 if (dd->flags & TDES_FLAGS_BUSY) {
  spin_unlock_irqrestore(&dd->lock, flags);
  return ret;
 }
 backlog = crypto_get_backlog(&dd->queue);
 async_req = crypto_dequeue_request(&dd->queue);
 if (async_req)
  dd->flags |= TDES_FLAGS_BUSY;
 spin_unlock_irqrestore(&dd->lock, flags);

 if (!async_req)
  return ret;

 if (backlog)
  backlog->complete(backlog, -EINPROGRESS);

 req = ablkcipher_request_cast(async_req);


 dd->req = req;
 dd->total = req->nbytes;
 dd->in_offset = 0;
 dd->in_sg = req->src;
 dd->out_offset = 0;
 dd->out_sg = req->dst;

 rctx = ablkcipher_request_ctx(req);
 ctx = crypto_ablkcipher_ctx(crypto_ablkcipher_reqtfm(req));
 rctx->mode &= TDES_FLAGS_MODE_MASK;
 dd->flags = (dd->flags & ~TDES_FLAGS_MODE_MASK) | rctx->mode;
 dd->ctx = ctx;
 ctx->dd = dd;

 err = atmel_tdes_write_ctrl(dd);
 if (!err)
  err = atmel_tdes_crypt_start(dd);
 if (err) {

  atmel_tdes_finish_req(dd, err);
  tasklet_schedule(&dd->queue_task);
 }

 return ret;
}
