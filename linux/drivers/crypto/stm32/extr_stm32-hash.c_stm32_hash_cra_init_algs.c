
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stm32_hash_request_ctx {int dummy; } ;
struct TYPE_3__ {int * unprepare_request; int prepare_request; int do_one_request; } ;
struct TYPE_4__ {TYPE_1__ op; } ;
struct stm32_hash_ctx {TYPE_2__ enginectx; int flags; scalar_t__ keylen; } ;
struct crypto_tfm {int dummy; } ;


 int HASH_FLAGS_HMAC ;
 int __crypto_ahash_cast (struct crypto_tfm*) ;
 int crypto_ahash_set_reqsize (int ,int) ;
 struct stm32_hash_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int stm32_hash_one_request ;
 int stm32_hash_prepare_req ;

__attribute__((used)) static int stm32_hash_cra_init_algs(struct crypto_tfm *tfm,
        const char *algs_hmac_name)
{
 struct stm32_hash_ctx *ctx = crypto_tfm_ctx(tfm);

 crypto_ahash_set_reqsize(__crypto_ahash_cast(tfm),
     sizeof(struct stm32_hash_request_ctx));

 ctx->keylen = 0;

 if (algs_hmac_name)
  ctx->flags |= HASH_FLAGS_HMAC;

 ctx->enginectx.op.do_one_request = stm32_hash_one_request;
 ctx->enginectx.op.prepare_request = stm32_hash_prepare_req;
 ctx->enginectx.op.unprepare_request = ((void*)0);
 return 0;
}
