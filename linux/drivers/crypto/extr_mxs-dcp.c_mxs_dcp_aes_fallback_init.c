
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dcp_async_ctx {struct crypto_sync_skcipher* fallback; } ;
struct dcp_aes_req_ctx {int dummy; } ;
struct TYPE_2__ {int reqsize; } ;
struct crypto_tfm {TYPE_1__ crt_ablkcipher; } ;
struct crypto_sync_skcipher {int dummy; } ;


 int CRYPTO_ALG_NEED_FALLBACK ;
 scalar_t__ IS_ERR (struct crypto_sync_skcipher*) ;
 int PTR_ERR (struct crypto_sync_skcipher*) ;
 struct crypto_sync_skcipher* crypto_alloc_sync_skcipher (char const*,int ,int ) ;
 char* crypto_tfm_alg_name (struct crypto_tfm*) ;
 struct dcp_async_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static int mxs_dcp_aes_fallback_init(struct crypto_tfm *tfm)
{
 const char *name = crypto_tfm_alg_name(tfm);
 struct dcp_async_ctx *actx = crypto_tfm_ctx(tfm);
 struct crypto_sync_skcipher *blk;

 blk = crypto_alloc_sync_skcipher(name, 0, CRYPTO_ALG_NEED_FALLBACK);
 if (IS_ERR(blk))
  return PTR_ERR(blk);

 actx->fallback = blk;
 tfm->crt_ablkcipher.reqsize = sizeof(struct dcp_aes_req_ctx);
 return 0;
}
