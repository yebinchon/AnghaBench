
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct skcipher_request {TYPE_1__ base; int cryptlen; } ;
struct skcipher_edesc {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct caam_request {struct skcipher_edesc* edesc; TYPE_1__* ctx; int cbk; int flc_dma; int * flc; } ;
struct caam_ctx {int dev; int * flc_dma; int * flc; } ;


 int CRYPTO_TFM_REQ_MAY_BACKLOG ;
 int EBUSY ;
 int EINPROGRESS ;
 size_t ENCRYPT ;
 scalar_t__ IS_ERR (struct skcipher_edesc*) ;
 int PTR_ERR (struct skcipher_edesc*) ;
 struct caam_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int dpaa2_caam_enqueue (int ,struct caam_request*) ;
 int qi_cache_free (struct skcipher_edesc*) ;
 struct skcipher_edesc* skcipher_edesc_alloc (struct skcipher_request*) ;
 int skcipher_encrypt_done ;
 struct caam_request* skcipher_request_ctx (struct skcipher_request*) ;
 int skcipher_unmap (int ,struct skcipher_edesc*,struct skcipher_request*) ;

__attribute__((used)) static int skcipher_encrypt(struct skcipher_request *req)
{
 struct skcipher_edesc *edesc;
 struct crypto_skcipher *skcipher = crypto_skcipher_reqtfm(req);
 struct caam_ctx *ctx = crypto_skcipher_ctx(skcipher);
 struct caam_request *caam_req = skcipher_request_ctx(req);
 int ret;

 if (!req->cryptlen)
  return 0;


 edesc = skcipher_edesc_alloc(req);
 if (IS_ERR(edesc))
  return PTR_ERR(edesc);

 caam_req->flc = &ctx->flc[ENCRYPT];
 caam_req->flc_dma = ctx->flc_dma[ENCRYPT];
 caam_req->cbk = skcipher_encrypt_done;
 caam_req->ctx = &req->base;
 caam_req->edesc = edesc;
 ret = dpaa2_caam_enqueue(ctx->dev, caam_req);
 if (ret != -EINPROGRESS &&
     !(ret == -EBUSY && req->base.flags & CRYPTO_TFM_REQ_MAY_BACKLOG)) {
  skcipher_unmap(ctx->dev, edesc, req);
  qi_cache_free(edesc);
 }

 return ret;
}
