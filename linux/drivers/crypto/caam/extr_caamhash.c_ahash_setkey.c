
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct device {int parent; } ;
struct crypto_ahash {int base; } ;
struct TYPE_2__ {int key_inline; unsigned int keylen; unsigned int keylen_pad; int algtype; int key_dma; } ;
struct caam_hash_ctx {TYPE_1__ adata; int key; struct device* jrdev; } ;
struct caam_drv_private {int era; } ;


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
 int crypto_ahash_digestsize (struct crypto_ahash*) ;
 int crypto_ahash_set_flags (struct crypto_ahash*,int ) ;
 int crypto_tfm_alg_blocksize (int *) ;
 int dev_dbg (struct device*,char*,unsigned int) ;
 struct caam_drv_private* dev_get_drvdata (int ) ;
 int dma_sync_single_for_device (struct device*,int ,unsigned int,int ) ;
 int gen_split_key (struct device*,int ,TYPE_1__*,int const*,unsigned int,unsigned int) ;
 int hash_digest_key (struct caam_hash_ctx*,unsigned int*,int *,int) ;
 int kfree (int *) ;
 int * kmemdup (int const*,unsigned int,int) ;
 int memcpy (int ,int const*,unsigned int) ;
 unsigned int split_key_len (int) ;

__attribute__((used)) static int ahash_setkey(struct crypto_ahash *ahash,
   const u8 *key, unsigned int keylen)
{
 struct caam_hash_ctx *ctx = crypto_ahash_ctx(ahash);
 struct device *jrdev = ctx->jrdev;
 int blocksize = crypto_tfm_alg_blocksize(&ahash->base);
 int digestsize = crypto_ahash_digestsize(ahash);
 struct caam_drv_private *ctrlpriv = dev_get_drvdata(ctx->jrdev->parent);
 int ret;
 u8 *hashed_key = ((void*)0);

 dev_dbg(jrdev, "keylen %d\n", keylen);

 if (keylen > blocksize) {
  hashed_key = kmemdup(key, keylen, GFP_KERNEL | GFP_DMA);
  if (!hashed_key)
   return -ENOMEM;
  ret = hash_digest_key(ctx, &keylen, hashed_key, digestsize);
  if (ret)
   goto bad_free_key;
  key = hashed_key;
 }





 if (ctrlpriv->era >= 6) {
  ctx->adata.key_inline = 1;
  ctx->adata.keylen = keylen;
  ctx->adata.keylen_pad = split_key_len(ctx->adata.algtype &
            OP_ALG_ALGSEL_MASK);

  if (ctx->adata.keylen_pad > CAAM_MAX_HASH_KEY_SIZE)
   goto bad_free_key;

  memcpy(ctx->key, key, keylen);







  if (keylen > ctx->adata.keylen_pad)
   dma_sync_single_for_device(ctx->jrdev,
         ctx->adata.key_dma,
         ctx->adata.keylen_pad,
         DMA_TO_DEVICE);
 } else {
  ret = gen_split_key(ctx->jrdev, ctx->key, &ctx->adata, key,
        keylen, CAAM_MAX_HASH_KEY_SIZE);
  if (ret)
   goto bad_free_key;
 }

 kfree(hashed_key);
 return ahash_set_sh_desc(ahash);
 bad_free_key:
 kfree(hashed_key);
 crypto_ahash_set_flags(ahash, CRYPTO_TFM_RES_BAD_KEY_LEN);
 return -EINVAL;
}
