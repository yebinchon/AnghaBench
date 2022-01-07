
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int tfm; } ;
typedef TYPE_2__ u8 ;
struct iproc_ctx_s {TYPE_2__* shash; } ;
struct crypto_ahash {int dummy; } ;
struct TYPE_8__ {int flags; } ;
struct ahash_request {int result; int nbytes; scalar_t__ src; TYPE_1__ base; } ;
typedef int gfp_t ;


 int CRYPTO_TFM_REQ_MAY_BACKLOG ;
 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int __ahash_finup (struct ahash_request*) ;
 struct iproc_ctx_s* crypto_ahash_ctx (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int crypto_free_shash (int ) ;
 int crypto_shash_finup (TYPE_2__*,TYPE_2__*,int ,int ) ;
 int kfree (TYPE_2__*) ;
 TYPE_2__* kmalloc (int ,int ) ;
 int sg_copy_to_buffer (scalar_t__,int,TYPE_2__*,int ) ;
 int sg_nents (scalar_t__) ;
 scalar_t__ spu_no_incr_hash (struct iproc_ctx_s*) ;

__attribute__((used)) static int ahash_finup(struct ahash_request *req)
{
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct iproc_ctx_s *ctx = crypto_ahash_ctx(tfm);
 u8 *tmpbuf;
 int ret;
 int nents;
 gfp_t gfp;

 if (spu_no_incr_hash(ctx)) {





  if (req->src) {
   nents = sg_nents(req->src);
  } else {
   ret = -EINVAL;
   goto ahash_finup_exit;
  }


  gfp = (req->base.flags & (CRYPTO_TFM_REQ_MAY_BACKLOG |
         CRYPTO_TFM_REQ_MAY_SLEEP)) ? GFP_KERNEL : GFP_ATOMIC;
  tmpbuf = kmalloc(req->nbytes, gfp);
  if (!tmpbuf) {
   ret = -ENOMEM;
   goto ahash_finup_exit;
  }

  if (sg_copy_to_buffer(req->src, nents, tmpbuf, req->nbytes) !=
    req->nbytes) {
   ret = -EINVAL;
   goto ahash_finup_free;
  }


  ret = crypto_shash_finup(ctx->shash, tmpbuf, req->nbytes,
      req->result);
 } else {

  return __ahash_finup(req);
 }
ahash_finup_free:
 kfree(tmpbuf);

ahash_finup_exit:

 crypto_free_shash(ctx->shash->tfm);
 kfree(ctx->shash);
 return ret;
}
