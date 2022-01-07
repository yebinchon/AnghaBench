
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct safexcel_cipher_ctx {int state_sz; int hash_alg; } ;
struct crypto_tfm {int dummy; } ;


 int CONTEXT_CONTROL_CRYPTO_ALG_SHA512 ;
 int SHA512_DIGEST_SIZE ;
 struct safexcel_cipher_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int safexcel_aead_cra_init (struct crypto_tfm*) ;

__attribute__((used)) static int safexcel_aead_sha512_cra_init(struct crypto_tfm *tfm)
{
 struct safexcel_cipher_ctx *ctx = crypto_tfm_ctx(tfm);

 safexcel_aead_cra_init(tfm);
 ctx->hash_alg = CONTEXT_CONTROL_CRYPTO_ALG_SHA512;
 ctx->state_sz = SHA512_DIGEST_SIZE;
 return 0;
}
