
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scatterlist {int length; int offset; } ;
struct mtk_sha_reqctx {size_t bufcnt; int offset; int bs; int flags; struct scatterlist* sg; int dma_addr; int buffer; scalar_t__ total; } ;
struct mtk_sha_rec {int flags; int req; } ;
struct mtk_cryp {int dev; } ;


 int DMA_TO_DEVICE ;
 int EINVAL ;
 int IS_ALIGNED (int ,int) ;
 int SHA_BUF_SIZE ;
 int SHA_FLAGS_FINAL ;
 int SHA_FLAGS_FINUP ;
 int SHA_FLAGS_SG ;
 struct mtk_sha_reqctx* ahash_request_ctx (int ) ;
 int dev_err (int ,char*) ;
 int dma_map_sg (int ,struct scatterlist*,int,int ) ;
 int dma_map_single (int ,int ,int ,int ) ;
 int dma_mapping_error (int ,int ) ;
 int min (scalar_t__,int ) ;
 int mtk_sha_append_sg (struct mtk_sha_reqctx*) ;
 int mtk_sha_fill_padding (struct mtk_sha_reqctx*,int) ;
 int mtk_sha_update_slow (struct mtk_cryp*,struct mtk_sha_rec*) ;
 int mtk_sha_xmit (struct mtk_cryp*,struct mtk_sha_rec*,int ,int,int ,size_t) ;
 int sg_dma_address (struct scatterlist*) ;
 scalar_t__ sg_is_last (struct scatterlist*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int mtk_sha_update_start(struct mtk_cryp *cryp,
    struct mtk_sha_rec *sha)
{
 struct mtk_sha_reqctx *ctx = ahash_request_ctx(sha->req);
 u32 len, final, tail;
 struct scatterlist *sg;

 if (!ctx->total)
  return 0;

 if (ctx->bufcnt || ctx->offset)
  return mtk_sha_update_slow(cryp, sha);

 sg = ctx->sg;

 if (!IS_ALIGNED(sg->offset, sizeof(u32)))
  return mtk_sha_update_slow(cryp, sha);

 if (!sg_is_last(sg) && !IS_ALIGNED(sg->length, ctx->bs))

  return mtk_sha_update_slow(cryp, sha);

 len = min(ctx->total, sg->length);

 if (sg_is_last(sg)) {
  if (!(ctx->flags & SHA_FLAGS_FINUP)) {

   tail = len & (ctx->bs - 1);
   len -= tail;
  }
 }

 ctx->total -= len;
 ctx->offset = len;

 final = (ctx->flags & SHA_FLAGS_FINUP) && !ctx->total;


 if (final) {
  size_t count;

  tail = len & (ctx->bs - 1);
  len -= tail;
  ctx->total += tail;
  ctx->offset = len;

  sg = ctx->sg;
  mtk_sha_append_sg(ctx);
  mtk_sha_fill_padding(ctx, len);

  ctx->dma_addr = dma_map_single(cryp->dev, ctx->buffer,
            SHA_BUF_SIZE, DMA_TO_DEVICE);
  if (unlikely(dma_mapping_error(cryp->dev, ctx->dma_addr))) {
   dev_err(cryp->dev, "dma map bytes error\n");
   return -EINVAL;
  }

  sha->flags |= SHA_FLAGS_FINAL;
  count = ctx->bufcnt;
  ctx->bufcnt = 0;

  if (len == 0) {
   ctx->flags &= ~SHA_FLAGS_SG;
   return mtk_sha_xmit(cryp, sha, ctx->dma_addr,
         count, 0, 0);

  } else {
   ctx->sg = sg;
   if (!dma_map_sg(cryp->dev, ctx->sg, 1, DMA_TO_DEVICE)) {
    dev_err(cryp->dev, "dma_map_sg error\n");
    return -EINVAL;
   }

   ctx->flags |= SHA_FLAGS_SG;
   return mtk_sha_xmit(cryp, sha, sg_dma_address(ctx->sg),
         len, ctx->dma_addr, count);
  }
 }

 if (!dma_map_sg(cryp->dev, ctx->sg, 1, DMA_TO_DEVICE)) {
  dev_err(cryp->dev, "dma_map_sg  error\n");
  return -EINVAL;
 }

 ctx->flags |= SHA_FLAGS_SG;

 return mtk_sha_xmit(cryp, sha, sg_dma_address(ctx->sg),
       len, 0, 0);
}
