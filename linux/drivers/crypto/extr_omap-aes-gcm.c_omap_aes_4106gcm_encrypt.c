
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_aes_reqctx {scalar_t__ iv; } ;
struct omap_aes_ctx {int nonce; } ;
struct aead_request {int iv; } ;


 int FLAGS_ENCRYPT ;
 int FLAGS_GCM ;
 int FLAGS_RFC4106_GCM ;
 struct omap_aes_reqctx* aead_request_ctx (struct aead_request*) ;
 struct omap_aes_ctx* crypto_aead_ctx (int ) ;
 int crypto_aead_reqtfm (struct aead_request*) ;
 int memcpy (scalar_t__,int ,int) ;
 int omap_aes_gcm_crypt (struct aead_request*,int) ;

int omap_aes_4106gcm_encrypt(struct aead_request *req)
{
 struct omap_aes_ctx *ctx = crypto_aead_ctx(crypto_aead_reqtfm(req));
 struct omap_aes_reqctx *rctx = aead_request_ctx(req);

 memcpy(rctx->iv, ctx->nonce, 4);
 memcpy(rctx->iv + 4, req->iv, 8);
 return omap_aes_gcm_crypt(req, FLAGS_ENCRYPT | FLAGS_GCM |
      FLAGS_RFC4106_GCM);
}
