
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcp_async_ctx {int fallback; } ;
struct crypto_tfm {int dummy; } ;


 int crypto_free_sync_skcipher (int ) ;
 struct dcp_async_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void mxs_dcp_aes_fallback_exit(struct crypto_tfm *tfm)
{
 struct dcp_async_ctx *actx = crypto_tfm_ctx(tfm);

 crypto_free_sync_skcipher(actx->fallback);
}
