
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_aes_reqctx {int iv; } ;
struct aead_request {int iv; } ;


 int FLAGS_ENCRYPT ;
 int FLAGS_GCM ;
 int GCM_AES_IV_SIZE ;
 struct omap_aes_reqctx* aead_request_ctx (struct aead_request*) ;
 int memcpy (int ,int ,int ) ;
 int omap_aes_gcm_crypt (struct aead_request*,int) ;

int omap_aes_gcm_encrypt(struct aead_request *req)
{
 struct omap_aes_reqctx *rctx = aead_request_ctx(req);

 memcpy(rctx->iv, req->iv, GCM_AES_IV_SIZE);
 return omap_aes_gcm_crypt(req, FLAGS_ENCRYPT | FLAGS_GCM);
}
