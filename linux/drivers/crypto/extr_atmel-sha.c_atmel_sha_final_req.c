
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_sha_reqctx {int bufcnt; int buffer; } ;
struct atmel_sha_dev {int dev; struct ahash_request* req; } ;
struct ahash_request {int dummy; } ;


 int ATMEL_SHA_DMA_THRESHOLD ;
 struct atmel_sha_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int atmel_sha_fill_padding (struct atmel_sha_reqctx*,int ) ;
 int atmel_sha_xmit_cpu (struct atmel_sha_dev*,int ,int,int) ;
 int atmel_sha_xmit_dma_map (struct atmel_sha_dev*,struct atmel_sha_reqctx*,int,int) ;
 int dev_dbg (int ,char*,int) ;

__attribute__((used)) static int atmel_sha_final_req(struct atmel_sha_dev *dd)
{
 struct ahash_request *req = dd->req;
 struct atmel_sha_reqctx *ctx = ahash_request_ctx(req);
 int err = 0;
 int count;

 if (ctx->bufcnt >= ATMEL_SHA_DMA_THRESHOLD) {
  atmel_sha_fill_padding(ctx, 0);
  count = ctx->bufcnt;
  ctx->bufcnt = 0;
  err = atmel_sha_xmit_dma_map(dd, ctx, count, 1);
 }

 else {
  atmel_sha_fill_padding(ctx, 0);
  count = ctx->bufcnt;
  ctx->bufcnt = 0;
  err = atmel_sha_xmit_cpu(dd, ctx->buffer, count, 1);
 }

 dev_dbg(dd->dev, "final_req: err: %d\n", err);

 return err;
}
