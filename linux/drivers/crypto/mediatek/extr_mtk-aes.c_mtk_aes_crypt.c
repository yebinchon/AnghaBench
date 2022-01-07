
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mtk_cryp {int dummy; } ;
struct mtk_aes_reqctx {int mode; } ;
struct mtk_aes_base_ctx {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_request {int base; } ;


 int AES_FLAGS_ENCRYPT ;
 int ENODEV ;
 struct mtk_aes_reqctx* ablkcipher_request_ctx (struct ablkcipher_request*) ;
 struct mtk_aes_base_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 struct crypto_ablkcipher* crypto_ablkcipher_reqtfm (struct ablkcipher_request*) ;
 struct mtk_cryp* mtk_aes_find_dev (struct mtk_aes_base_ctx*) ;
 int mtk_aes_handle_queue (struct mtk_cryp*,int,int *) ;

__attribute__((used)) static int mtk_aes_crypt(struct ablkcipher_request *req, u64 mode)
{
 struct crypto_ablkcipher *ablkcipher = crypto_ablkcipher_reqtfm(req);
 struct mtk_aes_base_ctx *ctx = crypto_ablkcipher_ctx(ablkcipher);
 struct mtk_aes_reqctx *rctx;
 struct mtk_cryp *cryp;

 cryp = mtk_aes_find_dev(ctx);
 if (!cryp)
  return -ENODEV;

 rctx = ablkcipher_request_ctx(req);
 rctx->mode = mode;

 return mtk_aes_handle_queue(cryp, !(mode & AES_FLAGS_ENCRYPT),
        &req->base);
}
