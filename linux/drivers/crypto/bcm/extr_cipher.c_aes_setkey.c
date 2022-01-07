
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ mode; } ;
struct iproc_ctx_s {int max_payload; int cipher_type; TYPE_1__ cipher; } ;
struct crypto_ablkcipher {int dummy; } ;


 int AES_BLOCK_SIZE ;



 scalar_t__ CIPHER_MODE_XTS ;
 int CIPHER_TYPE_AES128 ;
 int CIPHER_TYPE_AES192 ;
 int CIPHER_TYPE_AES256 ;
 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 int SPU_MAX_PAYLOAD_INF ;
 int WARN_ON (int) ;
 struct iproc_ctx_s* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 int crypto_ablkcipher_set_flags (struct crypto_ablkcipher*,int ) ;

__attribute__((used)) static int aes_setkey(struct crypto_ablkcipher *cipher, const u8 *key,
        unsigned int keylen)
{
 struct iproc_ctx_s *ctx = crypto_ablkcipher_ctx(cipher);

 if (ctx->cipher.mode == CIPHER_MODE_XTS)

  keylen = keylen / 2;

 switch (keylen) {
 case 130:
  ctx->cipher_type = CIPHER_TYPE_AES128;
  break;
 case 129:
  ctx->cipher_type = CIPHER_TYPE_AES192;
  break;
 case 128:
  ctx->cipher_type = CIPHER_TYPE_AES256;
  break;
 default:
  crypto_ablkcipher_set_flags(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
  return -EINVAL;
 }
 WARN_ON((ctx->max_payload != SPU_MAX_PAYLOAD_INF) &&
  ((ctx->max_payload % AES_BLOCK_SIZE) != 0));
 return 0;
}
