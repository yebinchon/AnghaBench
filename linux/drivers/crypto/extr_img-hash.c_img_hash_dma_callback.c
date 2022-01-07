
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_hash_request_ctx {scalar_t__ sg; scalar_t__ bufcnt; int buffer; } ;
struct img_hash_dev {int dma_task; int req; } ;


 struct img_hash_request_ctx* ahash_request_ctx (int ) ;
 int img_hash_xmit_cpu (struct img_hash_dev*,int ,scalar_t__,int ) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void img_hash_dma_callback(void *data)
{
 struct img_hash_dev *hdev = (struct img_hash_dev *)data;
 struct img_hash_request_ctx *ctx = ahash_request_ctx(hdev->req);

 if (ctx->bufcnt) {
  img_hash_xmit_cpu(hdev, ctx->buffer, ctx->bufcnt, 0);
  ctx->bufcnt = 0;
 }
 if (ctx->sg)
  tasklet_schedule(&hdev->dma_task);
}
