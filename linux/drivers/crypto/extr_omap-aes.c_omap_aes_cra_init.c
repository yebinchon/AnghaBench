
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct omap_aes_reqctx {int dummy; } ;
struct TYPE_5__ {int do_one_request; int * unprepare_request; int prepare_request; } ;
struct TYPE_6__ {TYPE_2__ op; } ;
struct omap_aes_ctx {TYPE_3__ enginectx; struct crypto_sync_skcipher* fallback; } ;
struct TYPE_4__ {int reqsize; } ;
struct crypto_tfm {TYPE_1__ crt_ablkcipher; } ;
struct crypto_sync_skcipher {int dummy; } ;


 int CRYPTO_ALG_NEED_FALLBACK ;
 scalar_t__ IS_ERR (struct crypto_sync_skcipher*) ;
 int PTR_ERR (struct crypto_sync_skcipher*) ;
 struct crypto_sync_skcipher* crypto_alloc_sync_skcipher (char const*,int ,int ) ;
 char* crypto_tfm_alg_name (struct crypto_tfm*) ;
 struct omap_aes_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int omap_aes_crypt_req ;
 int omap_aes_prepare_req ;

__attribute__((used)) static int omap_aes_cra_init(struct crypto_tfm *tfm)
{
 const char *name = crypto_tfm_alg_name(tfm);
 struct omap_aes_ctx *ctx = crypto_tfm_ctx(tfm);
 struct crypto_sync_skcipher *blk;

 blk = crypto_alloc_sync_skcipher(name, 0, CRYPTO_ALG_NEED_FALLBACK);
 if (IS_ERR(blk))
  return PTR_ERR(blk);

 ctx->fallback = blk;

 tfm->crt_ablkcipher.reqsize = sizeof(struct omap_aes_reqctx);

 ctx->enginectx.op.prepare_request = omap_aes_prepare_req;
 ctx->enginectx.op.unprepare_request = ((void*)0);
 ctx->enginectx.op.do_one_request = omap_aes_crypt_req;

 return 0;
}
