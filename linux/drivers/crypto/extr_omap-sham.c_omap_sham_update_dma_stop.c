
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_sham_reqctx {int sg_len; int sg; } ;
struct omap_sham_dev {int flags; int dev; int req; } ;


 int DMA_TO_DEVICE ;
 int FLAGS_DMA_ACTIVE ;
 struct omap_sham_reqctx* ahash_request_ctx (int ) ;
 int clear_bit (int ,int *) ;
 int dma_unmap_sg (int ,int ,int ,int ) ;

__attribute__((used)) static int omap_sham_update_dma_stop(struct omap_sham_dev *dd)
{
 struct omap_sham_reqctx *ctx = ahash_request_ctx(dd->req);

 dma_unmap_sg(dd->dev, ctx->sg, ctx->sg_len, DMA_TO_DEVICE);

 clear_bit(FLAGS_DMA_ACTIVE, &dd->flags);

 return 0;
}
