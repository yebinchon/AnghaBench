
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_hash_reqctx {int finup; int total; int error; scalar_t__ op_update; scalar_t__ digcnt; } ;
struct s5p_aes_dev {int dev; struct ahash_request* hash_req; int hash_lock; int hash_flags; int hash_queue; } ;
struct crypto_async_request {int (* complete ) (struct crypto_async_request*,int) ;} ;
struct ahash_request {int nbytes; } ;


 int EINPROGRESS ;
 int HASH_FLAGS_BUSY ;
 int SSS_HASHIN_INDEPENDENT ;
 int ahash_enqueue_request (int *,struct ahash_request*) ;
 struct ahash_request* ahash_request_cast (struct crypto_async_request*) ;
 struct s5p_hash_reqctx* ahash_request_ctx (struct ahash_request*) ;
 struct crypto_async_request* crypto_dequeue_request (int *) ;
 struct crypto_async_request* crypto_get_backlog (int *) ;
 int dev_dbg (int ,char*,scalar_t__,int ) ;
 int s5p_ahash_dma_init (struct s5p_aes_dev*,int ) ;
 int s5p_hash_finish_req (struct ahash_request*,int) ;
 int s5p_hash_prepare_request (struct ahash_request*,scalar_t__) ;
 int s5p_hash_write_iv (struct ahash_request*) ;
 int s5p_hash_xmit_dma (struct s5p_aes_dev*,int ,int) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct crypto_async_request*,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int s5p_hash_handle_queue(struct s5p_aes_dev *dd,
     struct ahash_request *req)
{
 struct crypto_async_request *async_req, *backlog;
 struct s5p_hash_reqctx *ctx;
 unsigned long flags;
 int err = 0, ret = 0;

retry:
 spin_lock_irqsave(&dd->hash_lock, flags);
 if (req)
  ret = ahash_enqueue_request(&dd->hash_queue, req);

 if (test_bit(HASH_FLAGS_BUSY, &dd->hash_flags)) {
  spin_unlock_irqrestore(&dd->hash_lock, flags);
  return ret;
 }

 backlog = crypto_get_backlog(&dd->hash_queue);
 async_req = crypto_dequeue_request(&dd->hash_queue);
 if (async_req)
  set_bit(HASH_FLAGS_BUSY, &dd->hash_flags);

 spin_unlock_irqrestore(&dd->hash_lock, flags);

 if (!async_req)
  return ret;

 if (backlog)
  backlog->complete(backlog, -EINPROGRESS);

 req = ahash_request_cast(async_req);
 dd->hash_req = req;
 ctx = ahash_request_ctx(req);

 err = s5p_hash_prepare_request(req, ctx->op_update);
 if (err || !ctx->total)
  goto out;

 dev_dbg(dd->dev, "handling new req, op_update: %u, nbytes: %d\n",
  ctx->op_update, req->nbytes);

 s5p_ahash_dma_init(dd, SSS_HASHIN_INDEPENDENT);
 if (ctx->digcnt)
  s5p_hash_write_iv(req);

 if (ctx->op_update) {
  err = s5p_hash_xmit_dma(dd, ctx->total, ctx->finup);
  if (err != -EINPROGRESS && ctx->finup && !ctx->error)

   err = s5p_hash_xmit_dma(dd, ctx->total, 1);
 } else {
  err = s5p_hash_xmit_dma(dd, ctx->total, 1);
 }
out:
 if (err != -EINPROGRESS) {

  s5p_hash_finish_req(req, err);
  req = ((void*)0);





  goto retry;
 }

 return ret;
}
