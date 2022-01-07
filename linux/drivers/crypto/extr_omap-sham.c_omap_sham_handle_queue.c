
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_sham_reqctx {scalar_t__ op; int flags; scalar_t__ digcnt; int total; } ;
struct omap_sham_dev {int dev; TYPE_1__* pdata; struct ahash_request* req; int lock; int flags; int queue; } ;
struct crypto_async_request {int (* complete ) (struct crypto_async_request*,int) ;} ;
struct ahash_request {int nbytes; } ;
struct TYPE_2__ {int (* copy_hash ) (struct ahash_request*,int ) ;} ;


 int BIT (int ) ;
 int EINPROGRESS ;
 int FLAGS_BUSY ;
 int FLAGS_FINUP ;
 scalar_t__ OP_FINAL ;
 scalar_t__ OP_UPDATE ;
 int ahash_enqueue_request (int *,struct ahash_request*) ;
 struct ahash_request* ahash_request_cast (struct crypto_async_request*) ;
 struct omap_sham_reqctx* ahash_request_ctx (struct ahash_request*) ;
 struct crypto_async_request* crypto_dequeue_request (int *) ;
 struct crypto_async_request* crypto_get_backlog (int *) ;
 int dev_dbg (int ,char*,int,...) ;
 int omap_sham_final_req (struct omap_sham_dev*) ;
 int omap_sham_finish_req (struct ahash_request*,int) ;
 int omap_sham_hw_init (struct omap_sham_dev*) ;
 int omap_sham_prepare_request (struct ahash_request*,int) ;
 int omap_sham_update_req (struct omap_sham_dev*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct crypto_async_request*,int) ;
 int stub2 (struct ahash_request*,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int omap_sham_handle_queue(struct omap_sham_dev *dd,
      struct ahash_request *req)
{
 struct crypto_async_request *async_req, *backlog;
 struct omap_sham_reqctx *ctx;
 unsigned long flags;
 int err = 0, ret = 0;

retry:
 spin_lock_irqsave(&dd->lock, flags);
 if (req)
  ret = ahash_enqueue_request(&dd->queue, req);
 if (test_bit(FLAGS_BUSY, &dd->flags)) {
  spin_unlock_irqrestore(&dd->lock, flags);
  return ret;
 }
 backlog = crypto_get_backlog(&dd->queue);
 async_req = crypto_dequeue_request(&dd->queue);
 if (async_req)
  set_bit(FLAGS_BUSY, &dd->flags);
 spin_unlock_irqrestore(&dd->lock, flags);

 if (!async_req)
  return ret;

 if (backlog)
  backlog->complete(backlog, -EINPROGRESS);

 req = ahash_request_cast(async_req);
 dd->req = req;
 ctx = ahash_request_ctx(req);

 err = omap_sham_prepare_request(req, ctx->op == OP_UPDATE);
 if (err || !ctx->total)
  goto err1;

 dev_dbg(dd->dev, "handling new req, op: %lu, nbytes: %d\n",
      ctx->op, req->nbytes);

 err = omap_sham_hw_init(dd);
 if (err)
  goto err1;

 if (ctx->digcnt)

  dd->pdata->copy_hash(req, 0);

 if (ctx->op == OP_UPDATE) {
  err = omap_sham_update_req(dd);
  if (err != -EINPROGRESS && (ctx->flags & BIT(FLAGS_FINUP)))

   err = omap_sham_final_req(dd);
 } else if (ctx->op == OP_FINAL) {
  err = omap_sham_final_req(dd);
 }
err1:
 dev_dbg(dd->dev, "exit, err: %d\n", err);

 if (err != -EINPROGRESS) {

  omap_sham_finish_req(req, err);
  req = ((void*)0);





  goto retry;
 }

 return ret;
}
