
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int dummy; } ;
struct chcr_aead_reqctx {int op; scalar_t__ verify; } ;
struct chcr_aead_ctx {scalar_t__ mayverify; } ;
struct aead_request {int dummy; } ;


 struct chcr_aead_ctx* AEAD_CTX (int ) ;
 int CHCR_DECRYPT_OP ;






 scalar_t__ VERIFY_HW ;
 scalar_t__ VERIFY_SW ;
 int a_ctx (struct crypto_aead*) ;
 struct chcr_aead_reqctx* aead_request_ctx (struct aead_request*) ;
 int chcr_aead_op (struct aead_request*,int,int ) ;
 int create_aead_ccm_wr ;
 int create_authenc_wr ;
 int create_gcm_wr ;
 int crypto_aead_maxauthsize (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int get_aead_subtype (struct crypto_aead*) ;

__attribute__((used)) static int chcr_aead_decrypt(struct aead_request *req)
{
 struct crypto_aead *tfm = crypto_aead_reqtfm(req);
 struct chcr_aead_ctx *aeadctx = AEAD_CTX(a_ctx(tfm));
 struct chcr_aead_reqctx *reqctx = aead_request_ctx(req);
 int size;

 if (aeadctx->mayverify == VERIFY_SW) {
  size = crypto_aead_maxauthsize(tfm);
  reqctx->verify = VERIFY_SW;
 } else {
  size = 0;
  reqctx->verify = VERIFY_HW;
 }
 reqctx->op = CHCR_DECRYPT_OP;
 switch (get_aead_subtype(tfm)) {
 case 130:
 case 128:
 case 131:
 case 129:
  return chcr_aead_op(req, size, create_authenc_wr);
 case 133:
 case 132:
  return chcr_aead_op(req, size, create_aead_ccm_wr);
 default:
  return chcr_aead_op(req, size, create_gcm_wr);
 }
}
