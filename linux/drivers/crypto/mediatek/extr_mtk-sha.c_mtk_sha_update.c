
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_sha_reqctx {scalar_t__ total; scalar_t__ bufcnt; int flags; scalar_t__ offset; int sg; } ;
struct ahash_request {scalar_t__ nbytes; int src; } ;


 scalar_t__ SHA_BUF_SIZE ;
 int SHA_FLAGS_FINUP ;
 int SHA_OP_UPDATE ;
 struct mtk_sha_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int mtk_sha_append_sg (struct mtk_sha_reqctx*) ;
 int mtk_sha_enqueue (struct ahash_request*,int ) ;

__attribute__((used)) static int mtk_sha_update(struct ahash_request *req)
{
 struct mtk_sha_reqctx *ctx = ahash_request_ctx(req);

 ctx->total = req->nbytes;
 ctx->sg = req->src;
 ctx->offset = 0;

 if ((ctx->bufcnt + ctx->total < SHA_BUF_SIZE) &&
     !(ctx->flags & SHA_FLAGS_FINUP))
  return mtk_sha_append_sg(ctx);

 return mtk_sha_enqueue(req, SHA_OP_UPDATE);
}
