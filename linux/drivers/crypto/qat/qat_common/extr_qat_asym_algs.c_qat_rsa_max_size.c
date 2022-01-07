
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qat_rsa_ctx {unsigned int key_sz; } ;
struct crypto_akcipher {int dummy; } ;


 struct qat_rsa_ctx* akcipher_tfm_ctx (struct crypto_akcipher*) ;

__attribute__((used)) static unsigned int qat_rsa_max_size(struct crypto_akcipher *tfm)
{
 struct qat_rsa_ctx *ctx = akcipher_tfm_ctx(tfm);

 return ctx->key_sz;
}
