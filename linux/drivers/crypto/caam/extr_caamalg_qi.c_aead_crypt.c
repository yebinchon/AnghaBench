
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int dummy; } ;
struct caam_ctx {int qidev; } ;
struct aead_request {int dummy; } ;
struct aead_edesc {int drv_req; } ;


 int EAGAIN ;
 int EINPROGRESS ;
 scalar_t__ IS_ERR_OR_NULL (struct aead_edesc*) ;
 int PTR_ERR (struct aead_edesc*) ;
 struct aead_edesc* aead_edesc_alloc (struct aead_request*,int) ;
 int aead_unmap (int ,struct aead_edesc*,struct aead_request*) ;
 int caam_congested ;
 int caam_qi_enqueue (int ,int *) ;
 struct caam_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int qi_cache_free (struct aead_edesc*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline int aead_crypt(struct aead_request *req, bool encrypt)
{
 struct aead_edesc *edesc;
 struct crypto_aead *aead = crypto_aead_reqtfm(req);
 struct caam_ctx *ctx = crypto_aead_ctx(aead);
 int ret;

 if (unlikely(caam_congested))
  return -EAGAIN;


 edesc = aead_edesc_alloc(req, encrypt);
 if (IS_ERR_OR_NULL(edesc))
  return PTR_ERR(edesc);


 ret = caam_qi_enqueue(ctx->qidev, &edesc->drv_req);
 if (!ret) {
  ret = -EINPROGRESS;
 } else {
  aead_unmap(ctx->qidev, edesc, req);
  qi_cache_free(edesc);
 }

 return ret;
}
