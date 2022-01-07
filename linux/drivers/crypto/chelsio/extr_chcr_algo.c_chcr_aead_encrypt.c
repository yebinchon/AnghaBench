
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int dummy; } ;
struct chcr_aead_reqctx {int op; int verify; } ;
struct aead_request {int dummy; } ;


 int CHCR_ENCRYPT_OP ;






 int VERIFY_HW ;
 struct chcr_aead_reqctx* aead_request_ctx (struct aead_request*) ;
 int chcr_aead_op (struct aead_request*,int ,int ) ;
 int create_aead_ccm_wr ;
 int create_authenc_wr ;
 int create_gcm_wr ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int get_aead_subtype (struct crypto_aead*) ;

__attribute__((used)) static int chcr_aead_encrypt(struct aead_request *req)
{
 struct crypto_aead *tfm = crypto_aead_reqtfm(req);
 struct chcr_aead_reqctx *reqctx = aead_request_ctx(req);

 reqctx->verify = VERIFY_HW;
 reqctx->op = CHCR_ENCRYPT_OP;

 switch (get_aead_subtype(tfm)) {
 case 128:
 case 130:
 case 131:
 case 129:
  return chcr_aead_op(req, 0, create_authenc_wr);
 case 133:
 case 132:
  return chcr_aead_op(req, 0, create_aead_ccm_wr);
 default:
  return chcr_aead_op(req, 0, create_gcm_wr);
 }
}
