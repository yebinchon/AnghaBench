
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mv_cesa_des_ctx {int key; } ;
struct crypto_skcipher {int dummy; } ;


 int DES3_EDE_KEY_SIZE ;
 struct mv_cesa_des_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 int memcpy (int ,int const*,int ) ;
 int verify_skcipher_des3_key (struct crypto_skcipher*,int const*) ;

__attribute__((used)) static int mv_cesa_des3_ede_setkey(struct crypto_skcipher *cipher,
       const u8 *key, unsigned int len)
{
 struct mv_cesa_des_ctx *ctx = crypto_skcipher_ctx(cipher);
 int err;

 err = verify_skcipher_des3_key(cipher, key);
 if (err)
  return err;

 memcpy(ctx->key, key, DES3_EDE_KEY_SIZE);

 return 0;
}
