
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct crypto_tfm {int dummy; } ;
struct TYPE_3__ {int tfm_skcipher; } ;
struct TYPE_4__ {TYPE_1__ aes; } ;
struct ccp_ctx {TYPE_2__ u; } ;


 int crypto_free_sync_skcipher (int ) ;
 struct ccp_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void ccp_aes_xts_cra_exit(struct crypto_tfm *tfm)
{
 struct ccp_ctx *ctx = crypto_tfm_ctx(tfm);

 crypto_free_sync_skcipher(ctx->u.aes.tfm_skcipher);
}
