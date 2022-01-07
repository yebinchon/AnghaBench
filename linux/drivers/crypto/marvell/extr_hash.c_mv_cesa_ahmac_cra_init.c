
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ops; } ;
struct mv_cesa_hmac_ctx {TYPE_1__ base; } ;
struct mv_cesa_ahash_req {int dummy; } ;
struct crypto_tfm {int dummy; } ;


 int __crypto_ahash_cast (struct crypto_tfm*) ;
 int crypto_ahash_set_reqsize (int ,int) ;
 struct mv_cesa_hmac_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int mv_cesa_ahash_req_ops ;

__attribute__((used)) static int mv_cesa_ahmac_cra_init(struct crypto_tfm *tfm)
{
 struct mv_cesa_hmac_ctx *ctx = crypto_tfm_ctx(tfm);

 ctx->base.ops = &mv_cesa_ahash_req_ops;

 crypto_ahash_set_reqsize(__crypto_ahash_cast(tfm),
     sizeof(struct mv_cesa_ahash_req));
 return 0;
}
