
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_hash_request_ctx {int total; } ;
struct img_hash_dev {int flags; int dma_task; int dev; int req; } ;


 int DRIVER_FLAGS_DMA_ACTIVE ;
 int DRIVER_FLAGS_FINAL ;
 int EINPROGRESS ;
 struct img_hash_request_ctx* ahash_request_ctx (int ) ;
 int dev_dbg (int ,char*,int ) ;
 int img_hash_start (struct img_hash_dev*,int) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static int img_hash_write_via_dma(struct img_hash_dev *hdev)
{
 struct img_hash_request_ctx *ctx = ahash_request_ctx(hdev->req);

 img_hash_start(hdev, 1);

 dev_dbg(hdev->dev, "xmit dma size: %d\n", ctx->total);

 if (!ctx->total)
  hdev->flags |= DRIVER_FLAGS_FINAL;

 hdev->flags |= DRIVER_FLAGS_DMA_ACTIVE | DRIVER_FLAGS_FINAL;

 tasklet_schedule(&hdev->dma_task);

 return -EINPROGRESS;
}
