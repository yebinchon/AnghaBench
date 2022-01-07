
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct iproc_ctx_s {scalar_t__ authkeylen; TYPE_2__* shash; int authkey; } ;
struct crypto_shash {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct TYPE_5__ {int flags; } ;
struct ahash_request {TYPE_1__ base; } ;
typedef int gfp_t ;
struct TYPE_6__ {struct crypto_shash* tfm; } ;


 int CRYPTO_TFM_REQ_MAY_BACKLOG ;
 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct crypto_shash*) ;
 int PTR_ERR (struct crypto_shash*) ;
 int __ahash_init (struct ahash_request*) ;
 struct iproc_ctx_s* crypto_ahash_ctx (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int crypto_ahash_tfm (struct crypto_ahash*) ;
 struct crypto_shash* crypto_alloc_shash (char const*,int ,int ) ;
 int crypto_free_shash (struct crypto_shash*) ;
 scalar_t__ crypto_shash_descsize (struct crypto_shash*) ;
 int crypto_shash_init (TYPE_2__*) ;
 int crypto_shash_setkey (struct crypto_shash*,int ,scalar_t__) ;
 char* crypto_tfm_alg_name (int ) ;
 int kfree (TYPE_2__*) ;
 TYPE_2__* kmalloc (scalar_t__,int ) ;
 scalar_t__ spu_no_incr_hash (struct iproc_ctx_s*) ;

__attribute__((used)) static int ahash_init(struct ahash_request *req)
{
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct iproc_ctx_s *ctx = crypto_ahash_ctx(tfm);
 const char *alg_name;
 struct crypto_shash *hash;
 int ret;
 gfp_t gfp;

 if (spu_no_incr_hash(ctx)) {





  alg_name = crypto_tfm_alg_name(crypto_ahash_tfm(tfm));
  hash = crypto_alloc_shash(alg_name, 0, 0);
  if (IS_ERR(hash)) {
   ret = PTR_ERR(hash);
   goto err;
  }

  gfp = (req->base.flags & (CRYPTO_TFM_REQ_MAY_BACKLOG |
         CRYPTO_TFM_REQ_MAY_SLEEP)) ? GFP_KERNEL : GFP_ATOMIC;
  ctx->shash = kmalloc(sizeof(*ctx->shash) +
         crypto_shash_descsize(hash), gfp);
  if (!ctx->shash) {
   ret = -ENOMEM;
   goto err_hash;
  }
  ctx->shash->tfm = hash;


  if (ctx->authkeylen > 0) {
   ret = crypto_shash_setkey(hash, ctx->authkey,
        ctx->authkeylen);
   if (ret)
    goto err_shash;
  }


  ret = crypto_shash_init(ctx->shash);
  if (ret)
   goto err_shash;
 } else {

  ret = __ahash_init(req);
 }

 return ret;

err_shash:
 kfree(ctx->shash);
err_hash:
 crypto_free_shash(hash);
err:
 return ret;
}
