
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_sha_reqctx {int dma_addr; int flags; int buffer; } ;
struct mtk_sha_rec {int dummy; } ;
struct mtk_cryp {int dev; } ;


 int DMA_TO_DEVICE ;
 int EINVAL ;
 int SHA_BUF_SIZE ;
 int SHA_FLAGS_SG ;
 int dev_err (int ,char*) ;
 int dma_map_single (int ,int ,int ,int ) ;
 int dma_mapping_error (int ,int ) ;
 int mtk_sha_xmit (struct mtk_cryp*,struct mtk_sha_rec*,int ,size_t,int ,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int mtk_sha_dma_map(struct mtk_cryp *cryp,
      struct mtk_sha_rec *sha,
      struct mtk_sha_reqctx *ctx,
      size_t count)
{
 ctx->dma_addr = dma_map_single(cryp->dev, ctx->buffer,
           SHA_BUF_SIZE, DMA_TO_DEVICE);
 if (unlikely(dma_mapping_error(cryp->dev, ctx->dma_addr))) {
  dev_err(cryp->dev, "dma map error\n");
  return -EINVAL;
 }

 ctx->flags &= ~SHA_FLAGS_SG;

 return mtk_sha_xmit(cryp, sha, ctx->dma_addr, count, 0, 0);
}
