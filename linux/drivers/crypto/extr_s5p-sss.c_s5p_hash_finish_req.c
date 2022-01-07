
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct s5p_hash_reqctx {int error; TYPE_2__* sg; struct s5p_aes_dev* dd; } ;
struct s5p_aes_dev {int hash_flags; int hash_lock; } ;
struct TYPE_4__ {int (* complete ) (TYPE_1__*,int) ;} ;
struct ahash_request {TYPE_1__ base; } ;
struct TYPE_5__ {int length; } ;


 int BIT (int ) ;
 int HASH_FLAGS_BUSY ;
 int HASH_FLAGS_DMA_READY ;
 int HASH_FLAGS_FINAL ;
 int HASH_FLAGS_OUTPUT_READY ;
 int HASH_FLAGS_SGS_ALLOCED ;
 int HASH_FLAGS_SGS_COPIED ;
 struct s5p_hash_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int free_pages (unsigned long,int ) ;
 int get_order (int ) ;
 int kfree (TYPE_2__*) ;
 int s5p_hash_finish (struct ahash_request*) ;
 int s5p_hash_read_msg (struct ahash_request*) ;
 scalar_t__ sg_virt (TYPE_2__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_1__*,int) ;
 scalar_t__ test_bit (int ,int*) ;

__attribute__((used)) static void s5p_hash_finish_req(struct ahash_request *req, int err)
{
 struct s5p_hash_reqctx *ctx = ahash_request_ctx(req);
 struct s5p_aes_dev *dd = ctx->dd;
 unsigned long flags;

 if (test_bit(HASH_FLAGS_SGS_COPIED, &dd->hash_flags))
  free_pages((unsigned long)sg_virt(ctx->sg),
      get_order(ctx->sg->length));

 if (test_bit(HASH_FLAGS_SGS_ALLOCED, &dd->hash_flags))
  kfree(ctx->sg);

 ctx->sg = ((void*)0);
 dd->hash_flags &= ~(BIT(HASH_FLAGS_SGS_ALLOCED) |
       BIT(HASH_FLAGS_SGS_COPIED));

 if (!err && !ctx->error) {
  s5p_hash_read_msg(req);
  if (test_bit(HASH_FLAGS_FINAL, &dd->hash_flags))
   s5p_hash_finish(req);
 } else {
  ctx->error = 1;
 }

 spin_lock_irqsave(&dd->hash_lock, flags);
 dd->hash_flags &= ~(BIT(HASH_FLAGS_BUSY) | BIT(HASH_FLAGS_FINAL) |
       BIT(HASH_FLAGS_DMA_READY) |
       BIT(HASH_FLAGS_OUTPUT_READY));
 spin_unlock_irqrestore(&dd->hash_lock, flags);

 if (req->base.complete)
  req->base.complete(&req->base, err);
}
