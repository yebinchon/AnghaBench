
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mtk_sha_reqctx {int op; } ;
struct mtk_sha_ctx {int id; int cryp; } ;
struct TYPE_2__ {int tfm; } ;
struct ahash_request {TYPE_1__ base; } ;


 struct mtk_sha_reqctx* ahash_request_ctx (struct ahash_request*) ;
 struct mtk_sha_ctx* crypto_tfm_ctx (int ) ;
 int mtk_sha_handle_queue (int ,int ,struct ahash_request*) ;

__attribute__((used)) static int mtk_sha_enqueue(struct ahash_request *req, u32 op)
{
 struct mtk_sha_reqctx *ctx = ahash_request_ctx(req);
 struct mtk_sha_ctx *tctx = crypto_tfm_ctx(req->base.tfm);

 ctx->op = op;

 return mtk_sha_handle_queue(tctx->cryp, tctx->id, req);
}
