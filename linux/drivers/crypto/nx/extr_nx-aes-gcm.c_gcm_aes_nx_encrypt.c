
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nx_gcm_rctx {char* iv; } ;
struct aead_request {int assoclen; int iv; } ;


 int GCM_AES_IV_SIZE ;
 struct nx_gcm_rctx* aead_request_ctx (struct aead_request*) ;
 int gcm_aes_nx_crypt (struct aead_request*,int,int ) ;
 int memcpy (char*,int ,int ) ;

__attribute__((used)) static int gcm_aes_nx_encrypt(struct aead_request *req)
{
 struct nx_gcm_rctx *rctx = aead_request_ctx(req);
 char *iv = rctx->iv;

 memcpy(iv, req->iv, GCM_AES_IV_SIZE);

 return gcm_aes_nx_crypt(req, 1, req->assoclen);
}
