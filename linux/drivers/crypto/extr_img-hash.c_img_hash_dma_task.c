
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct scatterlist {int dummy; } ;
struct img_hash_request_ctx {size_t offset; int bufcnt; TYPE_1__* sg; scalar_t__ sent; scalar_t__ buffer; int nents; int sgfirst; int flags; } ;
struct img_hash_dev {scalar_t__ err; int dev; int req; } ;
struct TYPE_3__ {size_t length; } ;


 int DRIVER_FLAGS_CPU ;
 struct img_hash_request_ctx* ahash_request_ctx (int ) ;
 int dev_err (int ,char*) ;
 int img_hash_dma_callback (struct img_hash_dev*) ;
 int img_hash_xmit_cpu (struct img_hash_dev*,int *,size_t,int ) ;
 scalar_t__ img_hash_xmit_dma (struct img_hash_dev*,struct scatterlist*) ;
 scalar_t__ likely (int) ;
 int sg_init_one (struct scatterlist*,int *,size_t) ;
 void* sg_next (TYPE_1__*) ;
 void* sg_pcopy_to_buffer (int ,int ,scalar_t__,size_t,scalar_t__) ;
 int * sg_virt (TYPE_1__*) ;

__attribute__((used)) static void img_hash_dma_task(unsigned long d)
{
 struct img_hash_dev *hdev = (struct img_hash_dev *)d;
 struct img_hash_request_ctx *ctx = ahash_request_ctx(hdev->req);
 u8 *addr;
 size_t nbytes, bleft, wsend, len, tbc;
 struct scatterlist tsg;

 if (!hdev->req || !ctx->sg)
  return;

 addr = sg_virt(ctx->sg);
 nbytes = ctx->sg->length - ctx->offset;
 bleft = nbytes % 4;
 wsend = (nbytes / 4);

 if (wsend) {
  sg_init_one(&tsg, addr + ctx->offset, wsend * 4);
  if (img_hash_xmit_dma(hdev, &tsg)) {
   dev_err(hdev->dev, "DMA failed, falling back to CPU");
   ctx->flags |= DRIVER_FLAGS_CPU;
   hdev->err = 0;
   img_hash_xmit_cpu(hdev, addr + ctx->offset,
       wsend * 4, 0);
   ctx->sent += wsend * 4;
   wsend = 0;
  } else {
   ctx->sent += wsend * 4;
  }
 }

 if (bleft) {
  ctx->bufcnt = sg_pcopy_to_buffer(ctx->sgfirst, ctx->nents,
       ctx->buffer, bleft, ctx->sent);
  tbc = 0;
  ctx->sg = sg_next(ctx->sg);
  while (ctx->sg && (ctx->bufcnt < 4)) {
   len = ctx->sg->length;
   if (likely(len > (4 - ctx->bufcnt)))
    len = 4 - ctx->bufcnt;
   tbc = sg_pcopy_to_buffer(ctx->sgfirst, ctx->nents,
       ctx->buffer + ctx->bufcnt, len,
     ctx->sent + ctx->bufcnt);
   ctx->bufcnt += tbc;
   if (tbc >= ctx->sg->length) {
    ctx->sg = sg_next(ctx->sg);
    tbc = 0;
   }
  }

  ctx->sent += ctx->bufcnt;
  ctx->offset = tbc;

  if (!wsend)
   img_hash_dma_callback(hdev);
 } else {
  ctx->offset = 0;
  ctx->sg = sg_next(ctx->sg);
 }
}
