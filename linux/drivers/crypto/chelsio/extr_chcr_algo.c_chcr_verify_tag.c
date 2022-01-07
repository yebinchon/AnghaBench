
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_aead {int dummy; } ;
struct cpl_fw6_pld {int * data; } ;
struct aead_request {scalar_t__ cryptlen; scalar_t__ assoclen; int src; } ;


 scalar_t__ CRYPTO_ALG_SUB_TYPE_AEAD_GCM ;
 scalar_t__ CRYPTO_ALG_SUB_TYPE_AEAD_RFC4106 ;
 int EBADMSG ;
 int SHA512_DIGEST_SIZE ;
 int crypto_aead_authsize (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int crypto_memneq (int *,struct cpl_fw6_pld*,int) ;
 scalar_t__ get_aead_subtype (struct crypto_aead*) ;
 int sg_nents (int ) ;
 int sg_pcopy_to_buffer (int ,int ,int *,int,scalar_t__) ;

void chcr_verify_tag(struct aead_request *req, u8 *input, int *err)
{
 u8 temp[SHA512_DIGEST_SIZE];
 struct crypto_aead *tfm = crypto_aead_reqtfm(req);
 int authsize = crypto_aead_authsize(tfm);
 struct cpl_fw6_pld *fw6_pld;
 int cmp = 0;

 fw6_pld = (struct cpl_fw6_pld *)input;
 if ((get_aead_subtype(tfm) == CRYPTO_ALG_SUB_TYPE_AEAD_RFC4106) ||
     (get_aead_subtype(tfm) == CRYPTO_ALG_SUB_TYPE_AEAD_GCM)) {
  cmp = crypto_memneq(&fw6_pld->data[2], (fw6_pld + 1), authsize);
 } else {

  sg_pcopy_to_buffer(req->src, sg_nents(req->src), temp,
    authsize, req->assoclen +
    req->cryptlen - authsize);
  cmp = crypto_memneq(temp, (fw6_pld + 1), authsize);
 }
 if (cmp)
  *err = -EBADMSG;
 else
  *err = 0;
}
