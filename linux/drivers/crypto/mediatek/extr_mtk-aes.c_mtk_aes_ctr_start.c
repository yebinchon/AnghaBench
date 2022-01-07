
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_cryp {int dummy; } ;
struct mtk_aes_reqctx {int dummy; } ;
struct mtk_aes_rec {int (* resume ) (struct mtk_cryp*,struct mtk_aes_rec*) ;scalar_t__ total; int areq; int ctx; } ;
struct mtk_aes_ctr_ctx {scalar_t__ offset; int iv; } ;
struct ablkcipher_request {int info; } ;


 int AES_BLOCK_SIZE ;
 struct ablkcipher_request* ablkcipher_request_cast (int ) ;
 struct mtk_aes_reqctx* ablkcipher_request_ctx (struct ablkcipher_request*) ;
 int memcpy (int ,int ,int ) ;
 struct mtk_aes_ctr_ctx* mtk_aes_ctr_ctx_cast (int ) ;
 int mtk_aes_ctr_transfer (struct mtk_cryp*,struct mtk_aes_rec*) ;
 int mtk_aes_set_mode (struct mtk_aes_rec*,struct mtk_aes_reqctx*) ;

__attribute__((used)) static int mtk_aes_ctr_start(struct mtk_cryp *cryp, struct mtk_aes_rec *aes)
{
 struct mtk_aes_ctr_ctx *cctx = mtk_aes_ctr_ctx_cast(aes->ctx);
 struct ablkcipher_request *req = ablkcipher_request_cast(aes->areq);
 struct mtk_aes_reqctx *rctx = ablkcipher_request_ctx(req);

 mtk_aes_set_mode(aes, rctx);

 memcpy(cctx->iv, req->info, AES_BLOCK_SIZE);
 cctx->offset = 0;
 aes->total = 0;
 aes->resume = mtk_aes_ctr_transfer;

 return mtk_aes_ctr_transfer(cryp, aes);
}
