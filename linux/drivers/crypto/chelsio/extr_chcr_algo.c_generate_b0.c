
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_aead {int dummy; } ;
struct chcr_aead_reqctx {int* scratch_pad; } ;
struct aead_request {scalar_t__ cryptlen; scalar_t__ assoclen; } ;


 unsigned short CHCR_DECRYPT_OP ;
 struct chcr_aead_reqctx* aead_request_ctx (struct aead_request*) ;
 unsigned int crypto_aead_authsize (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int memcpy (int*,int*,int) ;
 int set_msg_len (int*,scalar_t__,unsigned int) ;

__attribute__((used)) static int generate_b0(struct aead_request *req, u8 *ivptr,
   unsigned short op_type)
{
 unsigned int l, lp, m;
 int rc;
 struct crypto_aead *aead = crypto_aead_reqtfm(req);
 struct chcr_aead_reqctx *reqctx = aead_request_ctx(req);
 u8 *b0 = reqctx->scratch_pad;

 m = crypto_aead_authsize(aead);

 memcpy(b0, ivptr, 16);

 lp = b0[0];
 l = lp + 1;


 *b0 |= (8 * ((m - 2) / 2));


 if (req->assoclen)
  *b0 |= 64;
 rc = set_msg_len(b0 + 16 - l,
    (op_type == CHCR_DECRYPT_OP) ?
    req->cryptlen - m : req->cryptlen, l);

 return rc;
}
