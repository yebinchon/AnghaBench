
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct talitos_ctx {size_t keylen; size_t enckeylen; size_t authkeylen; int * key; int dma_key; struct device* dev; } ;
struct device {int dummy; } ;
struct crypto_authenc_keys {size_t authkeylen; scalar_t__ enckeylen; int enckey; int authkey; } ;
struct crypto_aead {int dummy; } ;
typedef int keys ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int DMA_TO_DEVICE ;
 int EINVAL ;
 scalar_t__ TALITOS_MAX_KEY_SIZE ;
 struct talitos_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_set_flags (struct crypto_aead*,int ) ;
 int crypto_authenc_extractkeys (struct crypto_authenc_keys*,int const*,unsigned int) ;
 int dma_map_single (struct device*,int *,size_t,int ) ;
 int dma_unmap_single (struct device*,int ,size_t,int ) ;
 int memcpy (int *,int ,size_t) ;
 int memzero_explicit (struct crypto_authenc_keys*,int) ;
 scalar_t__ unlikely (int) ;
 int verify_aead_des3_key (struct crypto_aead*,int ,scalar_t__) ;

__attribute__((used)) static int aead_des3_setkey(struct crypto_aead *authenc,
       const u8 *key, unsigned int keylen)
{
 struct talitos_ctx *ctx = crypto_aead_ctx(authenc);
 struct device *dev = ctx->dev;
 struct crypto_authenc_keys keys;
 int err;

 err = crypto_authenc_extractkeys(&keys, key, keylen);
 if (unlikely(err))
  goto badkey;

 err = -EINVAL;
 if (keys.authkeylen + keys.enckeylen > TALITOS_MAX_KEY_SIZE)
  goto badkey;

 err = verify_aead_des3_key(authenc, keys.enckey, keys.enckeylen);
 if (err)
  goto out;

 if (ctx->keylen)
  dma_unmap_single(dev, ctx->dma_key, ctx->keylen, DMA_TO_DEVICE);

 memcpy(ctx->key, keys.authkey, keys.authkeylen);
 memcpy(&ctx->key[keys.authkeylen], keys.enckey, keys.enckeylen);

 ctx->keylen = keys.authkeylen + keys.enckeylen;
 ctx->enckeylen = keys.enckeylen;
 ctx->authkeylen = keys.authkeylen;
 ctx->dma_key = dma_map_single(dev, ctx->key, ctx->keylen,
          DMA_TO_DEVICE);

out:
 memzero_explicit(&keys, sizeof(keys));
 return err;

badkey:
 crypto_aead_set_flags(authenc, CRYPTO_TFM_RES_BAD_KEY_LEN);
 goto out;
}
