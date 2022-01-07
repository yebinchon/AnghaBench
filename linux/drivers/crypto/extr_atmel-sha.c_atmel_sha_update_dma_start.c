
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scatterlist {int length; int offset; } ;
struct atmel_sha_reqctx {unsigned int bufcnt; unsigned int offset; int block_size; int flags; struct scatterlist* sg; int dma_addr; scalar_t__ buflen; int buffer; scalar_t__ total; int * digcnt; } ;
struct atmel_sha_dev {int dev; int req; } ;


 int DMA_TO_DEVICE ;
 int EINVAL ;
 int IS_ALIGNED (int ,int) ;
 int SHA_FLAGS_FINUP ;
 int SHA_FLAGS_SG ;
 struct atmel_sha_reqctx* ahash_request_ctx (int ) ;
 int atmel_sha_append_sg (struct atmel_sha_reqctx*) ;
 int atmel_sha_complete (struct atmel_sha_dev*,int ) ;
 int atmel_sha_fill_padding (struct atmel_sha_reqctx*,unsigned int) ;
 int atmel_sha_update_dma_slow (struct atmel_sha_dev*) ;
 int atmel_sha_xmit_start (struct atmel_sha_dev*,int ,unsigned int,int ,unsigned int,unsigned int) ;
 int dev_dbg (int ,char*,int ,int ,unsigned int,scalar_t__) ;
 int dev_err (int ,char*,...) ;
 int dma_map_sg (int ,struct scatterlist*,int,int ) ;
 int dma_map_single (int ,int ,scalar_t__,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 unsigned int min (scalar_t__,int ) ;
 int sg_dma_address (struct scatterlist*) ;
 scalar_t__ sg_is_last (struct scatterlist*) ;

__attribute__((used)) static int atmel_sha_update_dma_start(struct atmel_sha_dev *dd)
{
 struct atmel_sha_reqctx *ctx = ahash_request_ctx(dd->req);
 unsigned int length, final, tail;
 struct scatterlist *sg;
 unsigned int count;

 if (!ctx->total)
  return 0;

 if (ctx->bufcnt || ctx->offset)
  return atmel_sha_update_dma_slow(dd);

 dev_dbg(dd->dev, "fast: digcnt: 0x%llx 0x%llx, bufcnt: %zd, total: %u\n",
  ctx->digcnt[1], ctx->digcnt[0], ctx->bufcnt, ctx->total);

 sg = ctx->sg;

 if (!IS_ALIGNED(sg->offset, sizeof(u32)))
  return atmel_sha_update_dma_slow(dd);

 if (!sg_is_last(sg) && !IS_ALIGNED(sg->length, ctx->block_size))

  return atmel_sha_update_dma_slow(dd);

 length = min(ctx->total, sg->length);

 if (sg_is_last(sg)) {
  if (!(ctx->flags & SHA_FLAGS_FINUP)) {

   tail = length & (ctx->block_size - 1);
   length -= tail;
  }
 }

 ctx->total -= length;
 ctx->offset = length;

 final = (ctx->flags & SHA_FLAGS_FINUP) && !ctx->total;


 if (final) {
  tail = length & (ctx->block_size - 1);
  length -= tail;
  ctx->total += tail;
  ctx->offset = length;

  sg = ctx->sg;
  atmel_sha_append_sg(ctx);

  atmel_sha_fill_padding(ctx, length);

  ctx->dma_addr = dma_map_single(dd->dev, ctx->buffer,
   ctx->buflen + ctx->block_size, DMA_TO_DEVICE);
  if (dma_mapping_error(dd->dev, ctx->dma_addr)) {
   dev_err(dd->dev, "dma %zu bytes error\n",
    ctx->buflen + ctx->block_size);
   return atmel_sha_complete(dd, -EINVAL);
  }

  if (length == 0) {
   ctx->flags &= ~SHA_FLAGS_SG;
   count = ctx->bufcnt;
   ctx->bufcnt = 0;
   return atmel_sha_xmit_start(dd, ctx->dma_addr, count, 0,
     0, final);
  } else {
   ctx->sg = sg;
   if (!dma_map_sg(dd->dev, ctx->sg, 1,
    DMA_TO_DEVICE)) {
     dev_err(dd->dev, "dma_map_sg  error\n");
     return atmel_sha_complete(dd, -EINVAL);
   }

   ctx->flags |= SHA_FLAGS_SG;

   count = ctx->bufcnt;
   ctx->bufcnt = 0;
   return atmel_sha_xmit_start(dd, sg_dma_address(ctx->sg),
     length, ctx->dma_addr, count, final);
  }
 }

 if (!dma_map_sg(dd->dev, ctx->sg, 1, DMA_TO_DEVICE)) {
  dev_err(dd->dev, "dma_map_sg  error\n");
  return atmel_sha_complete(dd, -EINVAL);
 }

 ctx->flags |= SHA_FLAGS_SG;


 return atmel_sha_xmit_start(dd, sg_dma_address(ctx->sg), length, 0,
        0, final);
}
