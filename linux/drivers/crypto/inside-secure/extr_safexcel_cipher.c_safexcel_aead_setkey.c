
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct safexcel_crypto_priv {int flags; int dev; } ;
struct TYPE_2__ {int needs_inv; scalar_t__ ctxr_dma; } ;
struct safexcel_cipher_ctx {scalar_t__ mode; int alg; int hash_alg; scalar_t__ state_sz; scalar_t__ key_len; int opad; int ipad; int key; TYPE_1__ base; int nonce; struct safexcel_crypto_priv* priv; } ;
struct safexcel_ahash_export_state {scalar_t__ state; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_authenc_keys {scalar_t__ enckeylen; scalar_t__ enckey; int authkeylen; int authkey; } ;
struct crypto_aes_ctx {int dummy; } ;
struct crypto_aead {int dummy; } ;
typedef int keys ;


 scalar_t__ AES_MIN_KEY_SIZE ;





 scalar_t__ CONTEXT_CONTROL_CRYPTO_MODE_CTR_LOAD ;
 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int CRYPTO_TFM_RES_MASK ;
 scalar_t__ CTR_RFC3686_NONCE_SIZE ;
 int EINVAL ;
 int EIP197_TRC_CACHE ;


 int aes_expandkey (struct crypto_aes_ctx*,scalar_t__,scalar_t__) ;
 int crypto_aead_get_flags (struct crypto_aead*) ;
 int crypto_aead_set_flags (struct crypto_aead*,int) ;
 struct crypto_tfm* crypto_aead_tfm (struct crypto_aead*) ;
 scalar_t__ crypto_authenc_extractkeys (struct crypto_authenc_keys*,int const*,unsigned int) ;
 struct safexcel_cipher_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int dev_err (int ,char*) ;
 scalar_t__ memcmp (int ,scalar_t__,scalar_t__) ;
 int memcpy (int ,scalar_t__*,scalar_t__) ;
 int memzero_explicit (struct crypto_authenc_keys*,int) ;
 int safexcel_hmac_setkey (char*,int ,int ,struct safexcel_ahash_export_state*,struct safexcel_ahash_export_state*) ;
 int unlikely (int) ;
 int verify_aead_des3_key (struct crypto_aead*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int safexcel_aead_setkey(struct crypto_aead *ctfm, const u8 *key,
    unsigned int len)
{
 struct crypto_tfm *tfm = crypto_aead_tfm(ctfm);
 struct safexcel_cipher_ctx *ctx = crypto_tfm_ctx(tfm);
 struct safexcel_ahash_export_state istate, ostate;
 struct safexcel_crypto_priv *priv = ctx->priv;
 struct crypto_authenc_keys keys;
 struct crypto_aes_ctx aes;
 int err = -EINVAL;

 if (crypto_authenc_extractkeys(&keys, key, len) != 0)
  goto badkey;

 if (ctx->mode == CONTEXT_CONTROL_CRYPTO_MODE_CTR_LOAD) {

  if (keys.enckeylen < (AES_MIN_KEY_SIZE +
          CTR_RFC3686_NONCE_SIZE))
   goto badkey;

  ctx->nonce = *(u32 *)(keys.enckey + keys.enckeylen -
          CTR_RFC3686_NONCE_SIZE);

  keys.enckeylen -= CONTEXT_CONTROL_CRYPTO_MODE_CTR_LOAD;
 }


 switch (ctx->alg) {
 case 129:
  err = verify_aead_des3_key(ctfm, keys.enckey, keys.enckeylen);
  if (unlikely(err))
   goto badkey_expflags;
  break;
 case 128:
  err = aes_expandkey(&aes, keys.enckey, keys.enckeylen);
  if (unlikely(err))
   goto badkey;
  break;
 default:
  dev_err(priv->dev, "aead: unsupported cipher algorithm\n");
  goto badkey;
 }

 if (priv->flags & EIP197_TRC_CACHE && ctx->base.ctxr_dma &&
     memcmp(ctx->key, keys.enckey, keys.enckeylen))
  ctx->base.needs_inv = 1;


 switch (ctx->hash_alg) {
 case 134:
  if (safexcel_hmac_setkey("safexcel-sha1", keys.authkey,
      keys.authkeylen, &istate, &ostate))
   goto badkey;
  break;
 case 133:
  if (safexcel_hmac_setkey("safexcel-sha224", keys.authkey,
      keys.authkeylen, &istate, &ostate))
   goto badkey;
  break;
 case 132:
  if (safexcel_hmac_setkey("safexcel-sha256", keys.authkey,
      keys.authkeylen, &istate, &ostate))
   goto badkey;
  break;
 case 131:
  if (safexcel_hmac_setkey("safexcel-sha384", keys.authkey,
      keys.authkeylen, &istate, &ostate))
   goto badkey;
  break;
 case 130:
  if (safexcel_hmac_setkey("safexcel-sha512", keys.authkey,
      keys.authkeylen, &istate, &ostate))
   goto badkey;
  break;
 default:
  dev_err(priv->dev, "aead: unsupported hash algorithm\n");
  goto badkey;
 }

 crypto_aead_set_flags(ctfm, crypto_aead_get_flags(ctfm) &
        CRYPTO_TFM_RES_MASK);

 if (priv->flags & EIP197_TRC_CACHE && ctx->base.ctxr_dma &&
     (memcmp(ctx->ipad, istate.state, ctx->state_sz) ||
      memcmp(ctx->opad, ostate.state, ctx->state_sz)))
  ctx->base.needs_inv = 1;


 memcpy(ctx->key, keys.enckey, keys.enckeylen);
 ctx->key_len = keys.enckeylen;

 memcpy(ctx->ipad, &istate.state, ctx->state_sz);
 memcpy(ctx->opad, &ostate.state, ctx->state_sz);

 memzero_explicit(&keys, sizeof(keys));
 return 0;

badkey:
 crypto_aead_set_flags(ctfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
badkey_expflags:
 memzero_explicit(&keys, sizeof(keys));
 return err;
}
