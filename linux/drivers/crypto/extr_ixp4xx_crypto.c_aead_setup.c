
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ixp_ctx {int completion; int configuring; int authkey_len; int authkey; int enckey_len; int enckey; int decrypt; int encrypt; } ;
struct TYPE_3__ {int crt_flags; } ;
struct crypto_aead {TYPE_1__ base; } ;


 int CRYPTO_TFM_REQ_FORBID_WEAK_KEYS ;
 int CRYPTO_TFM_RES_WEAK_KEY ;
 int EINVAL ;
 int atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 struct ixp_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 unsigned int crypto_aead_maxauthsize (struct crypto_aead*) ;
 int init_completion (int *) ;
 int reset_sa_dir (int *) ;
 int setup_auth (TYPE_1__*,int,unsigned int,int ,int ,unsigned int) ;
 int setup_cipher (TYPE_1__*,int,int ,int ) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int aead_setup(struct crypto_aead *tfm, unsigned int authsize)
{
 struct ixp_ctx *ctx = crypto_aead_ctx(tfm);
 u32 *flags = &tfm->base.crt_flags;
 unsigned digest_len = crypto_aead_maxauthsize(tfm);
 int ret;

 if (!ctx->enckey_len && !ctx->authkey_len)
  return 0;
 init_completion(&ctx->completion);
 atomic_inc(&ctx->configuring);

 reset_sa_dir(&ctx->encrypt);
 reset_sa_dir(&ctx->decrypt);

 ret = setup_cipher(&tfm->base, 0, ctx->enckey, ctx->enckey_len);
 if (ret)
  goto out;
 ret = setup_cipher(&tfm->base, 1, ctx->enckey, ctx->enckey_len);
 if (ret)
  goto out;
 ret = setup_auth(&tfm->base, 0, authsize, ctx->authkey,
   ctx->authkey_len, digest_len);
 if (ret)
  goto out;
 ret = setup_auth(&tfm->base, 1, authsize, ctx->authkey,
   ctx->authkey_len, digest_len);
 if (ret)
  goto out;

 if (*flags & CRYPTO_TFM_RES_WEAK_KEY) {
  if (*flags & CRYPTO_TFM_REQ_FORBID_WEAK_KEYS) {
   ret = -EINVAL;
   goto out;
  } else {
   *flags &= ~CRYPTO_TFM_RES_WEAK_KEY;
  }
 }
out:
 if (!atomic_dec_and_test(&ctx->configuring))
  wait_for_completion(&ctx->completion);
 return ret;
}
