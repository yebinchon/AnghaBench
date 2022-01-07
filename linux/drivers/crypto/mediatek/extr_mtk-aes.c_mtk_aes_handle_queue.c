
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct mtk_cryp {struct mtk_aes_rec** aes; } ;
struct mtk_aes_rec {int flags; struct mtk_aes_base_ctx* ctx; struct crypto_async_request* areq; int lock; int queue; } ;
struct TYPE_2__ {int state; } ;
struct mtk_aes_base_ctx {int (* start ) (struct mtk_cryp*,struct mtk_aes_rec*) ;int key; TYPE_1__ info; } ;
struct crypto_async_request {int tfm; int (* complete ) (struct crypto_async_request*,int ) ;} ;


 int AES_FLAGS_BUSY ;
 int EINPROGRESS ;
 struct crypto_async_request* crypto_dequeue_request (int *) ;
 int crypto_enqueue_request (int *,struct crypto_async_request*) ;
 struct crypto_async_request* crypto_get_backlog (int *) ;
 struct mtk_aes_base_ctx* crypto_tfm_ctx (int ) ;
 int memcpy (int ,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct crypto_async_request*,int ) ;
 int stub2 (struct mtk_cryp*,struct mtk_aes_rec*) ;

__attribute__((used)) static int mtk_aes_handle_queue(struct mtk_cryp *cryp, u8 id,
    struct crypto_async_request *new_areq)
{
 struct mtk_aes_rec *aes = cryp->aes[id];
 struct crypto_async_request *areq, *backlog;
 struct mtk_aes_base_ctx *ctx;
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(&aes->lock, flags);
 if (new_areq)
  ret = crypto_enqueue_request(&aes->queue, new_areq);
 if (aes->flags & AES_FLAGS_BUSY) {
  spin_unlock_irqrestore(&aes->lock, flags);
  return ret;
 }
 backlog = crypto_get_backlog(&aes->queue);
 areq = crypto_dequeue_request(&aes->queue);
 if (areq)
  aes->flags |= AES_FLAGS_BUSY;
 spin_unlock_irqrestore(&aes->lock, flags);

 if (!areq)
  return ret;

 if (backlog)
  backlog->complete(backlog, -EINPROGRESS);

 ctx = crypto_tfm_ctx(areq->tfm);

 memcpy(ctx->info.state, ctx->key, sizeof(ctx->key));

 aes->areq = areq;
 aes->ctx = ctx;

 return ctx->start(cryp, aes);
}
