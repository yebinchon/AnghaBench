
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct atmel_sha_reqctx {int flags; scalar_t__ offset; scalar_t__ block_size; scalar_t__ buflen; int dma_addr; TYPE_1__* sg; } ;
struct atmel_sha_dev {int dev; int req; } ;
struct TYPE_4__ {scalar_t__ length; } ;


 int DMA_TO_DEVICE ;
 int SHA_FLAGS_PAD ;
 int SHA_FLAGS_SG ;
 struct atmel_sha_reqctx* ahash_request_ctx (int ) ;
 int dma_unmap_sg (int ,TYPE_1__*,int,int ) ;
 int dma_unmap_single (int ,int ,scalar_t__,int ) ;
 TYPE_1__* sg_next (TYPE_1__*) ;

__attribute__((used)) static int atmel_sha_update_dma_stop(struct atmel_sha_dev *dd)
{
 struct atmel_sha_reqctx *ctx = ahash_request_ctx(dd->req);

 if (ctx->flags & SHA_FLAGS_SG) {
  dma_unmap_sg(dd->dev, ctx->sg, 1, DMA_TO_DEVICE);
  if (ctx->sg->length == ctx->offset) {
   ctx->sg = sg_next(ctx->sg);
   if (ctx->sg)
    ctx->offset = 0;
  }
  if (ctx->flags & SHA_FLAGS_PAD) {
   dma_unmap_single(dd->dev, ctx->dma_addr,
    ctx->buflen + ctx->block_size, DMA_TO_DEVICE);
  }
 } else {
  dma_unmap_single(dd->dev, ctx->dma_addr, ctx->buflen +
      ctx->block_size, DMA_TO_DEVICE);
 }

 return 0;
}
