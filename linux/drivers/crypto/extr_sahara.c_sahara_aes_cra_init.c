
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sahara_ctx {int fallback; } ;
struct sahara_aes_reqctx {int dummy; } ;
struct TYPE_2__ {int reqsize; } ;
struct crypto_tfm {TYPE_1__ crt_ablkcipher; } ;


 int CRYPTO_ALG_NEED_FALLBACK ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int crypto_alloc_sync_skcipher (char const*,int ,int ) ;
 char* crypto_tfm_alg_name (struct crypto_tfm*) ;
 struct sahara_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int pr_err (char*,char const*) ;

__attribute__((used)) static int sahara_aes_cra_init(struct crypto_tfm *tfm)
{
 const char *name = crypto_tfm_alg_name(tfm);
 struct sahara_ctx *ctx = crypto_tfm_ctx(tfm);

 ctx->fallback = crypto_alloc_sync_skcipher(name, 0,
           CRYPTO_ALG_NEED_FALLBACK);
 if (IS_ERR(ctx->fallback)) {
  pr_err("Error allocating fallback algo %s\n", name);
  return PTR_ERR(ctx->fallback);
 }

 tfm->crt_ablkcipher.reqsize = sizeof(struct sahara_aes_reqctx);

 return 0;
}
