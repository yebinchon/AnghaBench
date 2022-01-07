
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_sha_reqctx {int flags; size_t bufcnt; size_t buflen; int * digcnt; int total; } ;
struct atmel_sha_dev {int dev; int req; } ;


 int SHA_FLAGS_FINUP ;
 struct atmel_sha_reqctx* ahash_request_ctx (int ) ;
 int atmel_sha_append_sg (struct atmel_sha_reqctx*) ;
 int atmel_sha_fill_padding (struct atmel_sha_reqctx*,int ) ;
 int atmel_sha_xmit_dma_map (struct atmel_sha_dev*,struct atmel_sha_reqctx*,size_t,unsigned int) ;
 int dev_dbg (int ,char*,size_t,int ,int ,unsigned int) ;

__attribute__((used)) static int atmel_sha_update_dma_slow(struct atmel_sha_dev *dd)
{
 struct atmel_sha_reqctx *ctx = ahash_request_ctx(dd->req);
 unsigned int final;
 size_t count;

 atmel_sha_append_sg(ctx);

 final = (ctx->flags & SHA_FLAGS_FINUP) && !ctx->total;

 dev_dbg(dd->dev, "slow: bufcnt: %zu, digcnt: 0x%llx 0x%llx, final: %d\n",
   ctx->bufcnt, ctx->digcnt[1], ctx->digcnt[0], final);

 if (final)
  atmel_sha_fill_padding(ctx, 0);

 if (final || (ctx->bufcnt == ctx->buflen)) {
  count = ctx->bufcnt;
  ctx->bufcnt = 0;
  return atmel_sha_xmit_dma_map(dd, ctx, count, final);
 }

 return 0;
}
