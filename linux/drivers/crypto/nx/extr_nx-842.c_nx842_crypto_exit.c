
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nx842_crypto_ctx {scalar_t__ dbounce; scalar_t__ sbounce; int wmem; } ;
struct crypto_tfm {int dummy; } ;


 struct nx842_crypto_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int free_page (unsigned long) ;
 int kfree (int ) ;

void nx842_crypto_exit(struct crypto_tfm *tfm)
{
 struct nx842_crypto_ctx *ctx = crypto_tfm_ctx(tfm);

 kfree(ctx->wmem);
 free_page((unsigned long)ctx->sbounce);
 free_page((unsigned long)ctx->dbounce);
}
