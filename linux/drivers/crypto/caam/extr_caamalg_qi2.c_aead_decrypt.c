
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_aead {int dummy; } ;
struct caam_request {struct aead_edesc* edesc; TYPE_1__* ctx; int cbk; int flc_dma; int * flc; } ;
struct caam_ctx {int dev; int * flc_dma; int * flc; } ;
struct TYPE_2__ {int flags; } ;
struct aead_request {TYPE_1__ base; } ;
struct aead_edesc {int dummy; } ;


 int CRYPTO_TFM_REQ_MAY_BACKLOG ;
 size_t DECRYPT ;
 int EBUSY ;
 int EINPROGRESS ;
 scalar_t__ IS_ERR (struct aead_edesc*) ;
 int PTR_ERR (struct aead_edesc*) ;
 int aead_decrypt_done ;
 struct aead_edesc* aead_edesc_alloc (struct aead_request*,int) ;
 struct caam_request* aead_request_ctx (struct aead_request*) ;
 int aead_unmap (int ,struct aead_edesc*,struct aead_request*) ;
 struct caam_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int dpaa2_caam_enqueue (int ,struct caam_request*) ;
 int qi_cache_free (struct aead_edesc*) ;

__attribute__((used)) static int aead_decrypt(struct aead_request *req)
{
 struct aead_edesc *edesc;
 struct crypto_aead *aead = crypto_aead_reqtfm(req);
 struct caam_ctx *ctx = crypto_aead_ctx(aead);
 struct caam_request *caam_req = aead_request_ctx(req);
 int ret;


 edesc = aead_edesc_alloc(req, 0);
 if (IS_ERR(edesc))
  return PTR_ERR(edesc);

 caam_req->flc = &ctx->flc[DECRYPT];
 caam_req->flc_dma = ctx->flc_dma[DECRYPT];
 caam_req->cbk = aead_decrypt_done;
 caam_req->ctx = &req->base;
 caam_req->edesc = edesc;
 ret = dpaa2_caam_enqueue(ctx->dev, caam_req);
 if (ret != -EINPROGRESS &&
     !(ret == -EBUSY && req->base.flags & CRYPTO_TFM_REQ_MAY_BACKLOG)) {
  aead_unmap(ctx->dev, edesc, req);
  qi_cache_free(edesc);
 }

 return ret;
}
