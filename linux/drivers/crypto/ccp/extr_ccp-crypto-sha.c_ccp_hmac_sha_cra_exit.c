
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct crypto_tfm {int dummy; } ;
struct TYPE_3__ {scalar_t__ hmac_tfm; } ;
struct TYPE_4__ {TYPE_1__ sha; } ;
struct ccp_ctx {TYPE_2__ u; } ;


 int ccp_sha_cra_exit (struct crypto_tfm*) ;
 int crypto_free_shash (scalar_t__) ;
 struct ccp_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void ccp_hmac_sha_cra_exit(struct crypto_tfm *tfm)
{
 struct ccp_ctx *ctx = crypto_tfm_ctx(tfm);

 if (ctx->u.sha.hmac_tfm)
  crypto_free_shash(ctx->u.sha.hmac_tfm);

 ccp_sha_cra_exit(tfm);
}
