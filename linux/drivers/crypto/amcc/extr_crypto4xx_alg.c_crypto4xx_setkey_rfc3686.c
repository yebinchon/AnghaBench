
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct crypto_skcipher {int dummy; } ;
struct crypto4xx_ctx {int iv_nonce; } ;


 int CRYPTO_FEEDBACK_MODE_NO_FB ;
 int CRYPTO_MODE_CTR ;
 unsigned int CTR_RFC3686_NONCE_SIZE ;
 int cpu_to_le32p (int *) ;
 int crypto4xx_setkey_aes (struct crypto_skcipher*,int const*,unsigned int,int ,int ) ;
 struct crypto4xx_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;

int crypto4xx_setkey_rfc3686(struct crypto_skcipher *cipher,
        const u8 *key, unsigned int keylen)
{
 struct crypto4xx_ctx *ctx = crypto_skcipher_ctx(cipher);
 int rc;

 rc = crypto4xx_setkey_aes(cipher, key, keylen - CTR_RFC3686_NONCE_SIZE,
  CRYPTO_MODE_CTR, CRYPTO_FEEDBACK_MODE_NO_FB);
 if (rc)
  return rc;

 ctx->iv_nonce = cpu_to_le32p((u32 *)&key[keylen -
       CTR_RFC3686_NONCE_SIZE]);

 return 0;
}
