
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct talitos_ctx {int keylen; int key; int dma_key; struct device* dev; } ;
struct device {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;


 int DMA_TO_DEVICE ;
 struct talitos_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 int dma_map_single (struct device*,int ,unsigned int,int ) ;
 int dma_unmap_single (struct device*,int ,int,int ) ;
 int memcpy (int *,int const*,unsigned int) ;

__attribute__((used)) static int ablkcipher_setkey(struct crypto_ablkcipher *cipher,
        const u8 *key, unsigned int keylen)
{
 struct talitos_ctx *ctx = crypto_ablkcipher_ctx(cipher);
 struct device *dev = ctx->dev;

 if (ctx->keylen)
  dma_unmap_single(dev, ctx->dma_key, ctx->keylen, DMA_TO_DEVICE);

 memcpy(&ctx->key, key, keylen);
 ctx->keylen = keylen;

 ctx->dma_key = dma_map_single(dev, ctx->key, keylen, DMA_TO_DEVICE);

 return 0;
}
