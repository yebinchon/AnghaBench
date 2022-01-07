
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_cryp {int dummy; } ;
struct mtk_aes_reqctx {int dummy; } ;
struct mtk_aes_rec {int resume; int areq; } ;
struct ablkcipher_request {int nbytes; int dst; int src; } ;


 struct ablkcipher_request* ablkcipher_request_cast (int ) ;
 struct mtk_aes_reqctx* ablkcipher_request_ctx (struct ablkcipher_request*) ;
 int mtk_aes_dma (struct mtk_cryp*,struct mtk_aes_rec*,int ,int ,int ) ;
 int mtk_aes_set_mode (struct mtk_aes_rec*,struct mtk_aes_reqctx*) ;
 int mtk_aes_transfer_complete ;

__attribute__((used)) static int mtk_aes_start(struct mtk_cryp *cryp, struct mtk_aes_rec *aes)
{
 struct ablkcipher_request *req = ablkcipher_request_cast(aes->areq);
 struct mtk_aes_reqctx *rctx = ablkcipher_request_ctx(req);

 mtk_aes_set_mode(aes, rctx);
 aes->resume = mtk_aes_transfer_complete;

 return mtk_aes_dma(cryp, aes, req->src, req->dst, req->nbytes);
}
