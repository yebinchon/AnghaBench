
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mtk_aes_base_ctx {int key; int keylen; int keymode; } ;
struct crypto_ablkcipher {int dummy; } ;





 int AES_TFM_128BITS ;
 int AES_TFM_192BITS ;
 int AES_TFM_256BITS ;
 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 int SIZE_IN_WORDS (int ) ;
 struct mtk_aes_base_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 int crypto_ablkcipher_set_flags (struct crypto_ablkcipher*,int ) ;
 int mtk_aes_write_state_le (int ,int const*,int ) ;

__attribute__((used)) static int mtk_aes_setkey(struct crypto_ablkcipher *tfm,
     const u8 *key, u32 keylen)
{
 struct mtk_aes_base_ctx *ctx = crypto_ablkcipher_ctx(tfm);

 switch (keylen) {
 case 130:
  ctx->keymode = AES_TFM_128BITS;
  break;
 case 129:
  ctx->keymode = AES_TFM_192BITS;
  break;
 case 128:
  ctx->keymode = AES_TFM_256BITS;
  break;

 default:
  crypto_ablkcipher_set_flags(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
  return -EINVAL;
 }

 ctx->keylen = SIZE_IN_WORDS(keylen);
 mtk_aes_write_state_le(ctx->key, (const u32 *)key, keylen);

 return 0;
}
