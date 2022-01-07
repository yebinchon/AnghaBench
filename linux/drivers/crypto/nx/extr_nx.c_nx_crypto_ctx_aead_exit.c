
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nx_crypto_ctx {int kmem; } ;
struct crypto_aead {int dummy; } ;


 struct nx_crypto_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int kzfree (int ) ;

void nx_crypto_ctx_aead_exit(struct crypto_aead *tfm)
{
 struct nx_crypto_ctx *nx_ctx = crypto_aead_ctx(tfm);

 kzfree(nx_ctx->kmem);
}
