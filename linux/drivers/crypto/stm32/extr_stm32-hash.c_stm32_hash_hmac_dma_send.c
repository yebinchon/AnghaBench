
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_hash_request_ctx {scalar_t__ dma_ct; int sg_key; } ;
struct stm32_hash_dev {int dma_mode; int flags; int dev; int req; } ;
struct stm32_hash_ctx {scalar_t__ keylen; int key; } ;
struct crypto_ahash {int dummy; } ;


 int ALIGN (scalar_t__,int) ;
 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int ETIMEDOUT ;
 scalar_t__ HASH_DMA_THRESHOLD ;
 int HASH_FLAGS_HMAC_KEY ;
 struct stm32_hash_request_ctx* ahash_request_ctx (int ) ;
 struct stm32_hash_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (int ) ;
 int dev_err (int ,char*) ;
 scalar_t__ dma_map_sg (int ,int *,int,int ) ;
 int dma_unmap_sg (int ,int *,int,int ) ;
 int sg_init_one (int *,int ,int ) ;
 scalar_t__ stm32_hash_wait_busy (struct stm32_hash_dev*) ;
 int stm32_hash_write_key (struct stm32_hash_dev*) ;
 int stm32_hash_xmit_dma (struct stm32_hash_dev*,int *,scalar_t__,int ) ;

__attribute__((used)) static int stm32_hash_hmac_dma_send(struct stm32_hash_dev *hdev)
{
 struct stm32_hash_request_ctx *rctx = ahash_request_ctx(hdev->req);
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(hdev->req);
 struct stm32_hash_ctx *ctx = crypto_ahash_ctx(tfm);
 int err;

 if (ctx->keylen < HASH_DMA_THRESHOLD || (hdev->dma_mode == 1)) {
  err = stm32_hash_write_key(hdev);
  if (stm32_hash_wait_busy(hdev))
   return -ETIMEDOUT;
 } else {
  if (!(hdev->flags & HASH_FLAGS_HMAC_KEY))
   sg_init_one(&rctx->sg_key, ctx->key,
        ALIGN(ctx->keylen, sizeof(u32)));

  rctx->dma_ct = dma_map_sg(hdev->dev, &rctx->sg_key, 1,
       DMA_TO_DEVICE);
  if (rctx->dma_ct == 0) {
   dev_err(hdev->dev, "dma_map_sg error\n");
   return -ENOMEM;
  }

  err = stm32_hash_xmit_dma(hdev, &rctx->sg_key, ctx->keylen, 0);

  dma_unmap_sg(hdev->dev, &rctx->sg_key, 1, DMA_TO_DEVICE);
 }

 return err;
}
