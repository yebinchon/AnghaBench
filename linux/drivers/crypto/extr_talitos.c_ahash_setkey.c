
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
struct talitos_ctx {int keylen; int key; int dma_key; struct device* dev; } ;
struct device {int dummy; } ;
struct crypto_ahash {int dummy; } ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int DMA_TO_DEVICE ;
 int EINVAL ;
 int SHA512_DIGEST_SIZE ;
 unsigned int crypto_ahash_digestsize (struct crypto_ahash*) ;
 int crypto_ahash_set_flags (struct crypto_ahash*,int ) ;
 int crypto_ahash_tfm (struct crypto_ahash*) ;
 unsigned int crypto_tfm_alg_blocksize (int ) ;
 struct talitos_ctx* crypto_tfm_ctx (int ) ;
 int dma_map_single (struct device*,int ,unsigned int,int ) ;
 int dma_unmap_single (struct device*,int ,int,int ) ;
 int keyhash (struct crypto_ahash*,int const*,unsigned int,int const*) ;
 int memcpy (int ,int const*,unsigned int) ;

__attribute__((used)) static int ahash_setkey(struct crypto_ahash *tfm, const u8 *key,
   unsigned int keylen)
{
 struct talitos_ctx *ctx = crypto_tfm_ctx(crypto_ahash_tfm(tfm));
 struct device *dev = ctx->dev;
 unsigned int blocksize =
   crypto_tfm_alg_blocksize(crypto_ahash_tfm(tfm));
 unsigned int digestsize = crypto_ahash_digestsize(tfm);
 unsigned int keysize = keylen;
 u8 hash[SHA512_DIGEST_SIZE];
 int ret;

 if (keylen <= blocksize)
  memcpy(ctx->key, key, keysize);
 else {

  ret = keyhash(tfm, key, keylen, hash);

  if (ret) {
   crypto_ahash_set_flags(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
   return -EINVAL;
  }

  keysize = digestsize;
  memcpy(ctx->key, hash, digestsize);
 }

 if (ctx->keylen)
  dma_unmap_single(dev, ctx->dma_key, ctx->keylen, DMA_TO_DEVICE);

 ctx->keylen = keysize;
 ctx->dma_key = dma_map_single(dev, ctx->key, keysize, DMA_TO_DEVICE);

 return 0;
}
