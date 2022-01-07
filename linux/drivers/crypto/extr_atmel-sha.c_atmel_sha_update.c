
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_sha_reqctx {scalar_t__ total; int flags; scalar_t__ bufcnt; scalar_t__ buflen; scalar_t__ offset; int sg; } ;
struct ahash_request {scalar_t__ nbytes; int src; } ;


 scalar_t__ ATMEL_SHA_DMA_THRESHOLD ;
 int SHA_FLAGS_CPU ;
 int SHA_FLAGS_FINUP ;
 int SHA_OP_UPDATE ;
 struct atmel_sha_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int atmel_sha_append_sg (struct atmel_sha_reqctx*) ;
 int atmel_sha_enqueue (struct ahash_request*,int ) ;

__attribute__((used)) static int atmel_sha_update(struct ahash_request *req)
{
 struct atmel_sha_reqctx *ctx = ahash_request_ctx(req);

 if (!req->nbytes)
  return 0;

 ctx->total = req->nbytes;
 ctx->sg = req->src;
 ctx->offset = 0;

 if (ctx->flags & SHA_FLAGS_FINUP) {
  if (ctx->bufcnt + ctx->total < ATMEL_SHA_DMA_THRESHOLD)

   ctx->flags |= SHA_FLAGS_CPU;
 } else if (ctx->bufcnt + ctx->total < ctx->buflen) {
  atmel_sha_append_sg(ctx);
  return 0;
 }
 return atmel_sha_enqueue(req, SHA_OP_UPDATE);
}
