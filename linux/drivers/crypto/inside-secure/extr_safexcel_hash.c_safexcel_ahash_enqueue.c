
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct safexcel_crypto_priv {int flags; TYPE_3__* ring; int context_pool; } ;
struct safexcel_ahash_req {int needs_inv; scalar_t__ processed; scalar_t__ digest; int state_sz; scalar_t__ block_sz; scalar_t__ finish; int state; } ;
struct TYPE_5__ {int needs_inv; int ring; TYPE_4__* ctxr; int ctxr_dma; } ;
struct safexcel_ahash_ctx {TYPE_1__ base; int opad; struct safexcel_crypto_priv* priv; } ;
struct ahash_request {int base; } ;
struct TYPE_8__ {scalar_t__ data; } ;
struct TYPE_6__ {int work; } ;
struct TYPE_7__ {TYPE_2__ work_data; int workqueue; int queue_lock; int queue; } ;


 scalar_t__ CONTEXT_CONTROL_DIGEST_PRECOMPUTED ;
 int EIP197_GFP_FLAGS (int ) ;
 int EIP197_TRC_CACHE ;
 int ENOMEM ;
 struct safexcel_ahash_req* ahash_request_ctx (struct ahash_request*) ;
 struct safexcel_ahash_ctx* crypto_ahash_ctx (int ) ;
 int crypto_ahash_reqtfm (struct ahash_request*) ;
 int crypto_enqueue_request (int *,int *) ;
 TYPE_4__* dma_pool_zalloc (int ,int ,int *) ;
 scalar_t__ memcmp (scalar_t__,int ,int) ;
 int queue_work (int ,int *) ;
 int safexcel_select_ring (struct safexcel_crypto_priv*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int safexcel_ahash_enqueue(struct ahash_request *areq)
{
 struct safexcel_ahash_ctx *ctx = crypto_ahash_ctx(crypto_ahash_reqtfm(areq));
 struct safexcel_ahash_req *req = ahash_request_ctx(areq);
 struct safexcel_crypto_priv *priv = ctx->priv;
 int ret, ring;

 req->needs_inv = 0;

 if (ctx->base.ctxr) {
  if (priv->flags & EIP197_TRC_CACHE && !ctx->base.needs_inv &&
      req->processed &&
      (
       (req->finish &&
        (req->digest == CONTEXT_CONTROL_DIGEST_PRECOMPUTED)) ||

       memcmp(ctx->base.ctxr->data, req->state, req->state_sz) ||

       (req->finish && (req->processed != req->block_sz)) ||

       (req->finish &&
        memcmp(ctx->base.ctxr->data + (req->state_sz>>2),
        ctx->opad, req->state_sz))))






   ctx->base.needs_inv = 1;

  if (ctx->base.needs_inv) {
   ctx->base.needs_inv = 0;
   req->needs_inv = 1;
  }
 } else {
  ctx->base.ring = safexcel_select_ring(priv);
  ctx->base.ctxr = dma_pool_zalloc(priv->context_pool,
       EIP197_GFP_FLAGS(areq->base),
       &ctx->base.ctxr_dma);
  if (!ctx->base.ctxr)
   return -ENOMEM;
 }

 ring = ctx->base.ring;

 spin_lock_bh(&priv->ring[ring].queue_lock);
 ret = crypto_enqueue_request(&priv->ring[ring].queue, &areq->base);
 spin_unlock_bh(&priv->ring[ring].queue_lock);

 queue_work(priv->ring[ring].workqueue,
     &priv->ring[ring].work_data.work);

 return ret;
}
