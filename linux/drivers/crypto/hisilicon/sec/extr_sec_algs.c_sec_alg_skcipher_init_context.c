
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sec_alg_tfm_ctx {int cipher_alg; int req_template; int key; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
typedef enum sec_cipher_alg { ____Placeholder_sec_cipher_alg } sec_cipher_alg ;


 struct crypto_tfm* crypto_skcipher_tfm (struct crypto_skcipher*) ;
 struct sec_alg_tfm_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int memcpy (int ,int const*,unsigned int) ;
 int sec_alg_skcipher_init_template (struct sec_alg_tfm_ctx*,int *,int) ;

__attribute__((used)) static void sec_alg_skcipher_init_context(struct crypto_skcipher *atfm,
       const u8 *key,
       unsigned int keylen,
       enum sec_cipher_alg alg)
{
 struct crypto_tfm *tfm = crypto_skcipher_tfm(atfm);
 struct sec_alg_tfm_ctx *ctx = crypto_tfm_ctx(tfm);

 ctx->cipher_alg = alg;
 memcpy(ctx->key, key, keylen);
 sec_alg_skcipher_init_template(ctx, &ctx->req_template,
           ctx->cipher_alg);
}
