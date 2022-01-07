
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct crypto_ablkcipher {int dummy; } ;
struct TYPE_3__ {unsigned int key_len; int key; int key_sg; int mode; int type; } ;
struct TYPE_4__ {TYPE_1__ aes; } ;
struct ccp_ctx {TYPE_2__ u; } ;
struct ccp_crypto_ablkcipher_alg {int mode; } ;





 int CCP_AES_TYPE_128 ;
 int CCP_AES_TYPE_192 ;
 int CCP_AES_TYPE_256 ;
 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 struct ccp_crypto_ablkcipher_alg* ccp_crypto_ablkcipher_alg (int ) ;
 int crypto_ablkcipher_set_flags (struct crypto_ablkcipher*,int ) ;
 int crypto_ablkcipher_tfm (struct crypto_ablkcipher*) ;
 struct ccp_ctx* crypto_tfm_ctx (int ) ;
 int memcpy (int ,int const*,unsigned int) ;
 int sg_init_one (int *,int ,unsigned int) ;

__attribute__((used)) static int ccp_aes_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
     unsigned int key_len)
{
 struct ccp_ctx *ctx = crypto_tfm_ctx(crypto_ablkcipher_tfm(tfm));
 struct ccp_crypto_ablkcipher_alg *alg =
  ccp_crypto_ablkcipher_alg(crypto_ablkcipher_tfm(tfm));

 switch (key_len) {
 case 130:
  ctx->u.aes.type = CCP_AES_TYPE_128;
  break;
 case 129:
  ctx->u.aes.type = CCP_AES_TYPE_192;
  break;
 case 128:
  ctx->u.aes.type = CCP_AES_TYPE_256;
  break;
 default:
  crypto_ablkcipher_set_flags(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
  return -EINVAL;
 }
 ctx->u.aes.mode = alg->mode;
 ctx->u.aes.key_len = key_len;

 memcpy(ctx->u.aes.key, key, key_len);
 sg_init_one(&ctx->u.aes.key_sg, ctx->u.aes.key, key_len);

 return 0;
}
