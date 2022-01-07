
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct crypto_ahash {int base; } ;
struct TYPE_2__ {unsigned int keylen; unsigned int keylen_pad; int algtype; int key_inline; int key_dma; int const* key_virt; } ;
struct caam_hash_ctx {TYPE_1__ adata; int dev; int key; } ;


 unsigned int CAAM_MAX_HASH_KEY_SIZE ;
 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int DMA_TO_DEVICE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int OP_ALG_ALGSEL_MASK ;
 int ahash_set_sh_desc (struct crypto_ahash*) ;
 struct caam_hash_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 unsigned int crypto_ahash_digestsize (struct crypto_ahash*) ;
 int crypto_ahash_set_flags (struct crypto_ahash*,int ) ;
 unsigned int crypto_tfm_alg_blocksize (int *) ;
 int dev_dbg (int ,char*,unsigned int,unsigned int) ;
 int dma_sync_single_for_device (int ,int ,unsigned int,int ) ;
 int hash_digest_key (struct caam_hash_ctx*,unsigned int*,int *,unsigned int) ;
 int kfree (int *) ;
 int * kmemdup (int const*,unsigned int,int) ;
 int memcpy (int ,int const*,unsigned int) ;
 unsigned int split_key_len (int) ;

__attribute__((used)) static int ahash_setkey(struct crypto_ahash *ahash, const u8 *key,
   unsigned int keylen)
{
 struct caam_hash_ctx *ctx = crypto_ahash_ctx(ahash);
 unsigned int blocksize = crypto_tfm_alg_blocksize(&ahash->base);
 unsigned int digestsize = crypto_ahash_digestsize(ahash);
 int ret;
 u8 *hashed_key = ((void*)0);

 dev_dbg(ctx->dev, "keylen %d blocksize %d\n", keylen, blocksize);

 if (keylen > blocksize) {
  hashed_key = kmemdup(key, keylen, GFP_KERNEL | GFP_DMA);
  if (!hashed_key)
   return -ENOMEM;
  ret = hash_digest_key(ctx, &keylen, hashed_key, digestsize);
  if (ret)
   goto bad_free_key;
  key = hashed_key;
 }

 ctx->adata.keylen = keylen;
 ctx->adata.keylen_pad = split_key_len(ctx->adata.algtype &
           OP_ALG_ALGSEL_MASK);
 if (ctx->adata.keylen_pad > CAAM_MAX_HASH_KEY_SIZE)
  goto bad_free_key;

 ctx->adata.key_virt = key;
 ctx->adata.key_inline = 1;







 if (keylen > ctx->adata.keylen_pad) {
  memcpy(ctx->key, key, keylen);
  dma_sync_single_for_device(ctx->dev, ctx->adata.key_dma,
        ctx->adata.keylen_pad,
        DMA_TO_DEVICE);
 }

 ret = ahash_set_sh_desc(ahash);
 kfree(hashed_key);
 return ret;
bad_free_key:
 kfree(hashed_key);
 crypto_ahash_set_flags(ahash, CRYPTO_TFM_RES_BAD_KEY_LEN);
 return -EINVAL;
}
