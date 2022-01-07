
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct img_hash_request_ctx {scalar_t__ dma_ct; } ;
struct img_hash_dev {int err; int dma_lch; int dev; int req; } ;
struct dma_async_tx_descriptor {struct img_hash_dev* callback_param; int callback; } ;


 int DMA_CTRL_ACK ;
 int DMA_MEM_TO_DEV ;
 int DMA_PREP_INTERRUPT ;
 int DMA_TO_DEVICE ;
 int EINVAL ;
 struct img_hash_request_ctx* ahash_request_ctx (int ) ;
 int dev_err (int ,char*) ;
 int dma_async_issue_pending (int ) ;
 scalar_t__ dma_map_sg (int ,struct scatterlist*,int,int ) ;
 int dma_unmap_sg (int ,struct scatterlist*,int,int ) ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_sg (int ,struct scatterlist*,scalar_t__,int ,int) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;
 int img_hash_dma_callback ;

__attribute__((used)) static int img_hash_xmit_dma(struct img_hash_dev *hdev, struct scatterlist *sg)
{
 struct dma_async_tx_descriptor *desc;
 struct img_hash_request_ctx *ctx = ahash_request_ctx(hdev->req);

 ctx->dma_ct = dma_map_sg(hdev->dev, sg, 1, DMA_TO_DEVICE);
 if (ctx->dma_ct == 0) {
  dev_err(hdev->dev, "Invalid DMA sg\n");
  hdev->err = -EINVAL;
  return -EINVAL;
 }

 desc = dmaengine_prep_slave_sg(hdev->dma_lch,
           sg,
           ctx->dma_ct,
           DMA_MEM_TO_DEV,
           DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
 if (!desc) {
  dev_err(hdev->dev, "Null DMA descriptor\n");
  hdev->err = -EINVAL;
  dma_unmap_sg(hdev->dev, sg, 1, DMA_TO_DEVICE);
  return -EINVAL;
 }
 desc->callback = img_hash_dma_callback;
 desc->callback_param = hdev;
 dmaengine_submit(desc);
 dma_async_issue_pending(hdev->dma_lch);

 return 0;
}
