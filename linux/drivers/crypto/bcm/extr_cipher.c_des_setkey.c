
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iproc_ctx_s {int cipher_type; } ;
struct crypto_ablkcipher {int dummy; } ;


 int CIPHER_TYPE_DES ;
 struct iproc_ctx_s* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 int verify_ablkcipher_des_key (struct crypto_ablkcipher*,int const*) ;

__attribute__((used)) static int des_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
        unsigned int keylen)
{
 struct iproc_ctx_s *ctx = crypto_ablkcipher_ctx(cipher);
 int err;

 err = verify_ablkcipher_des_key(cipher, key);
 if (err)
  return err;

 ctx->cipher_type = CIPHER_TYPE_DES;
 return 0;
}
