
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_sha_reqctx {int flags; size_t bufcnt; scalar_t__ total; } ;
struct mtk_sha_rec {int flags; int req; } ;
struct mtk_cryp {int dev; } ;


 size_t SHA_BUF_SIZE ;
 int SHA_FLAGS_FINAL ;
 int SHA_FLAGS_FINUP ;
 struct mtk_sha_reqctx* ahash_request_ctx (int ) ;
 int dev_dbg (int ,char*,size_t) ;
 int mtk_sha_append_sg (struct mtk_sha_reqctx*) ;
 int mtk_sha_dma_map (struct mtk_cryp*,struct mtk_sha_rec*,struct mtk_sha_reqctx*,size_t) ;
 int mtk_sha_fill_padding (struct mtk_sha_reqctx*,int ) ;

__attribute__((used)) static int mtk_sha_update_slow(struct mtk_cryp *cryp,
          struct mtk_sha_rec *sha)
{
 struct mtk_sha_reqctx *ctx = ahash_request_ctx(sha->req);
 size_t count;
 u32 final;

 mtk_sha_append_sg(ctx);

 final = (ctx->flags & SHA_FLAGS_FINUP) && !ctx->total;

 dev_dbg(cryp->dev, "slow: bufcnt: %zu\n", ctx->bufcnt);

 if (final) {
  sha->flags |= SHA_FLAGS_FINAL;
  mtk_sha_fill_padding(ctx, 0);
 }

 if (final || (ctx->bufcnt == SHA_BUF_SIZE && ctx->total)) {
  count = ctx->bufcnt;
  ctx->bufcnt = 0;

  return mtk_sha_dma_map(cryp, sha, ctx, count);
 }
 return 0;
}
