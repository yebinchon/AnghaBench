
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {void* npe_mode; } ;
struct ixp_ctx {int completion; int configuring; TYPE_2__ decrypt; TYPE_2__ encrypt; } ;
struct TYPE_3__ {int crt_flags; } ;
struct crypto_ablkcipher {TYPE_1__ base; } ;


 int CRYPTO_TFM_REQ_FORBID_WEAK_KEYS ;
 int CRYPTO_TFM_RES_WEAK_KEY ;
 int EINVAL ;
 void* NPE_OP_HMAC_DISABLE ;
 int atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 struct ixp_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 int init_completion (int *) ;
 int reset_sa_dir (TYPE_2__*) ;
 int setup_cipher (TYPE_1__*,int,int const*,unsigned int) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int ablk_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
   unsigned int key_len)
{
 struct ixp_ctx *ctx = crypto_ablkcipher_ctx(tfm);
 u32 *flags = &tfm->base.crt_flags;
 int ret;

 init_completion(&ctx->completion);
 atomic_inc(&ctx->configuring);

 reset_sa_dir(&ctx->encrypt);
 reset_sa_dir(&ctx->decrypt);

 ctx->encrypt.npe_mode = NPE_OP_HMAC_DISABLE;
 ctx->decrypt.npe_mode = NPE_OP_HMAC_DISABLE;

 ret = setup_cipher(&tfm->base, 0, key, key_len);
 if (ret)
  goto out;
 ret = setup_cipher(&tfm->base, 1, key, key_len);
 if (ret)
  goto out;

 if (*flags & CRYPTO_TFM_RES_WEAK_KEY) {
  if (*flags & CRYPTO_TFM_REQ_FORBID_WEAK_KEYS) {
   ret = -EINVAL;
  } else {
   *flags &= ~CRYPTO_TFM_RES_WEAK_KEY;
  }
 }
out:
 if (!atomic_dec_and_test(&ctx->configuring))
  wait_for_completion(&ctx->completion);
 return ret;
}
