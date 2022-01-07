
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aead_request {int iv; int assoclen; } ;
struct aead_req_ctx {int is_gcm4543; int plaintext_authenticate_only; int backup_iv; int assoclen; } ;


 int DRV_CRYPTO_DIRECTION_ENCRYPT ;
 int EBUSY ;
 int EINPROGRESS ;
 struct aead_req_ctx* aead_request_ctx (struct aead_request*) ;
 int cc_proc_aead (struct aead_request*,int ) ;
 int memset (struct aead_req_ctx*,int ,int) ;

__attribute__((used)) static int cc_aead_encrypt(struct aead_request *req)
{
 struct aead_req_ctx *areq_ctx = aead_request_ctx(req);
 int rc;

 memset(areq_ctx, 0, sizeof(*areq_ctx));


 areq_ctx->backup_iv = req->iv;
 areq_ctx->assoclen = req->assoclen;
 areq_ctx->is_gcm4543 = 0;

 areq_ctx->plaintext_authenticate_only = 0;

 rc = cc_proc_aead(req, DRV_CRYPTO_DIRECTION_ENCRYPT);
 if (rc != -EINPROGRESS && rc != -EBUSY)
  req->iv = areq_ctx->backup_iv;

 return rc;
}
