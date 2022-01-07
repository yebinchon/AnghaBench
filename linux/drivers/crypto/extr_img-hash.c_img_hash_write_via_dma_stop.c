
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_hash_request_ctx {int flags; int dma_ct; int sg; } ;
struct img_hash_dev {int dev; int req; } ;


 int DMA_TO_DEVICE ;
 int DRIVER_FLAGS_SG ;
 struct img_hash_request_ctx* ahash_request_ctx (int ) ;
 int dma_unmap_sg (int ,int ,int ,int ) ;

__attribute__((used)) static int img_hash_write_via_dma_stop(struct img_hash_dev *hdev)
{
 struct img_hash_request_ctx *ctx = ahash_request_ctx(hdev->req);

 if (ctx->flags & DRIVER_FLAGS_SG)
  dma_unmap_sg(hdev->dev, ctx->sg, ctx->dma_ct, DMA_TO_DEVICE);

 return 0;
}
