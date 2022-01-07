
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_sha_reqctx {int flags; } ;
struct ahash_request {int dummy; } ;


 int SHA_FLAGS_FINUP ;
 int SHA_FLAGS_PAD ;
 int SHA_OP_FINAL ;
 struct mtk_sha_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int mtk_sha_enqueue (struct ahash_request*,int ) ;
 int mtk_sha_finish (struct ahash_request*) ;

__attribute__((used)) static int mtk_sha_final(struct ahash_request *req)
{
 struct mtk_sha_reqctx *ctx = ahash_request_ctx(req);

 ctx->flags |= SHA_FLAGS_FINUP;

 if (ctx->flags & SHA_FLAGS_PAD)
  return mtk_sha_finish(req);

 return mtk_sha_enqueue(req, SHA_OP_FINAL);
}
