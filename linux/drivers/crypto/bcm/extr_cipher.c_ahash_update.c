
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct iproc_ctx_s {int shash; } ;
struct crypto_ahash {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct ahash_request {int nbytes; scalar_t__ src; TYPE_1__ base; } ;
typedef int gfp_t ;


 int CRYPTO_TFM_REQ_MAY_BACKLOG ;
 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int __ahash_update (struct ahash_request*) ;
 struct iproc_ctx_s* crypto_ahash_ctx (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int crypto_shash_update (int ,int *,int ) ;
 int kfree (int *) ;
 int * kmalloc (int ,int ) ;
 int sg_copy_to_buffer (scalar_t__,int,int *,int ) ;
 int sg_nents (scalar_t__) ;
 scalar_t__ spu_no_incr_hash (struct iproc_ctx_s*) ;

__attribute__((used)) static int ahash_update(struct ahash_request *req)
{
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct iproc_ctx_s *ctx = crypto_ahash_ctx(tfm);
 u8 *tmpbuf;
 int ret;
 int nents;
 gfp_t gfp;

 if (spu_no_incr_hash(ctx)) {





  if (req->src)
   nents = sg_nents(req->src);
  else
   return -EINVAL;


  gfp = (req->base.flags & (CRYPTO_TFM_REQ_MAY_BACKLOG |
         CRYPTO_TFM_REQ_MAY_SLEEP)) ? GFP_KERNEL : GFP_ATOMIC;
  tmpbuf = kmalloc(req->nbytes, gfp);
  if (!tmpbuf)
   return -ENOMEM;

  if (sg_copy_to_buffer(req->src, nents, tmpbuf, req->nbytes) !=
    req->nbytes) {
   kfree(tmpbuf);
   return -EINVAL;
  }


  ret = crypto_shash_update(ctx->shash, tmpbuf, req->nbytes);
  kfree(tmpbuf);
 } else {

  ret = __ahash_update(req);
 }

 return ret;
}
