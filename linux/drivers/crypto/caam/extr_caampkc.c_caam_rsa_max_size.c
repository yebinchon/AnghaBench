
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_akcipher {int dummy; } ;
struct TYPE_2__ {unsigned int n_sz; } ;
struct caam_rsa_ctx {TYPE_1__ key; } ;


 struct caam_rsa_ctx* akcipher_tfm_ctx (struct crypto_akcipher*) ;

__attribute__((used)) static unsigned int caam_rsa_max_size(struct crypto_akcipher *tfm)
{
 struct caam_rsa_ctx *ctx = akcipher_tfm_ctx(tfm);

 return ctx->key.n_sz;
}
