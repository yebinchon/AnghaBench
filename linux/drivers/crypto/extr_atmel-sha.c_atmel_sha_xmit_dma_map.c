
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_sha_reqctx {int dma_addr; int flags; scalar_t__ block_size; scalar_t__ buflen; int buffer; } ;
struct atmel_sha_dev {int dev; } ;


 int DMA_TO_DEVICE ;
 int EINVAL ;
 int SHA_FLAGS_SG ;
 int atmel_sha_complete (struct atmel_sha_dev*,int ) ;
 int atmel_sha_xmit_start (struct atmel_sha_dev*,int ,size_t,int ,int ,int) ;
 int dev_err (int ,char*,scalar_t__) ;
 int dma_map_single (int ,int ,scalar_t__,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;

__attribute__((used)) static int atmel_sha_xmit_dma_map(struct atmel_sha_dev *dd,
     struct atmel_sha_reqctx *ctx,
     size_t length, int final)
{
 ctx->dma_addr = dma_map_single(dd->dev, ctx->buffer,
    ctx->buflen + ctx->block_size, DMA_TO_DEVICE);
 if (dma_mapping_error(dd->dev, ctx->dma_addr)) {
  dev_err(dd->dev, "dma %zu bytes error\n", ctx->buflen +
    ctx->block_size);
  return atmel_sha_complete(dd, -EINVAL);
 }

 ctx->flags &= ~SHA_FLAGS_SG;


 return atmel_sha_xmit_start(dd, ctx->dma_addr, length, 0, 0, final);
}
