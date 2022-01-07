
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hmac_ctx {int base_hash; } ;
struct crypto_tfm {int dummy; } ;
struct chcr_context {int dummy; } ;
struct chcr_ahash_req_ctx {int dummy; } ;


 struct hmac_ctx* HMAC_CTX (struct chcr_context*) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int __crypto_ahash_cast (struct crypto_tfm*) ;
 int chcr_alloc_shash (unsigned int) ;
 int chcr_device_init (struct chcr_context*) ;
 unsigned int crypto_ahash_digestsize (int ) ;
 int crypto_ahash_set_reqsize (int ,int) ;
 struct chcr_context* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static int chcr_hmac_cra_init(struct crypto_tfm *tfm)
{
 struct chcr_context *ctx = crypto_tfm_ctx(tfm);
 struct hmac_ctx *hmacctx = HMAC_CTX(ctx);
 unsigned int digestsize =
  crypto_ahash_digestsize(__crypto_ahash_cast(tfm));

 crypto_ahash_set_reqsize(__crypto_ahash_cast(tfm),
     sizeof(struct chcr_ahash_req_ctx));
 hmacctx->base_hash = chcr_alloc_shash(digestsize);
 if (IS_ERR(hmacctx->base_hash))
  return PTR_ERR(hmacctx->base_hash);
 return chcr_device_init(crypto_tfm_ctx(tfm));
}
