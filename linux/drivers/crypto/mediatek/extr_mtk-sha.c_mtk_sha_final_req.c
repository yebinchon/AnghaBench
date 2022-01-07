
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_sha_reqctx {size_t bufcnt; } ;
struct mtk_sha_rec {int flags; int req; } ;
struct mtk_cryp {int dummy; } ;


 int SHA_FLAGS_FINAL ;
 struct mtk_sha_reqctx* ahash_request_ctx (int ) ;
 int mtk_sha_dma_map (struct mtk_cryp*,struct mtk_sha_rec*,struct mtk_sha_reqctx*,size_t) ;
 int mtk_sha_fill_padding (struct mtk_sha_reqctx*,int ) ;

__attribute__((used)) static int mtk_sha_final_req(struct mtk_cryp *cryp,
        struct mtk_sha_rec *sha)
{
 struct mtk_sha_reqctx *ctx = ahash_request_ctx(sha->req);
 size_t count;

 mtk_sha_fill_padding(ctx, 0);

 sha->flags |= SHA_FLAGS_FINAL;
 count = ctx->bufcnt;
 ctx->bufcnt = 0;

 return mtk_sha_dma_map(cryp, sha, ctx, count);
}
