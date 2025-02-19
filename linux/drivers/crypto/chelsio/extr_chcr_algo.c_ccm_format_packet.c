
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_aead {int dummy; } ;
struct chcr_aead_reqctx {scalar_t__ scratch_pad; } ;
struct chcr_aead_ctx {int * salt; } ;
struct aead_request {int * iv; } ;


 struct chcr_aead_ctx* AEAD_CTX (int ) ;
 unsigned int CRYPTO_ALG_SUB_TYPE_AEAD_RFC4309 ;
 int a_ctx (struct crypto_aead*) ;
 struct chcr_aead_reqctx* aead_request_ctx (struct aead_request*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int generate_b0 (struct aead_request*,int*,unsigned short) ;
 unsigned short htons (unsigned int) ;
 int memcpy (int*,int *,int) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static int ccm_format_packet(struct aead_request *req,
        u8 *ivptr,
        unsigned int sub_type,
        unsigned short op_type,
        unsigned int assoclen)
{
 struct chcr_aead_reqctx *reqctx = aead_request_ctx(req);
 struct crypto_aead *tfm = crypto_aead_reqtfm(req);
 struct chcr_aead_ctx *aeadctx = AEAD_CTX(a_ctx(tfm));
 int rc = 0;

 if (sub_type == CRYPTO_ALG_SUB_TYPE_AEAD_RFC4309) {
  ivptr[0] = 3;
  memcpy(ivptr + 1, &aeadctx->salt[0], 3);
  memcpy(ivptr + 4, req->iv, 8);
  memset(ivptr + 12, 0, 4);
 } else {
  memcpy(ivptr, req->iv, 16);
 }
 if (assoclen)
  *((unsigned short *)(reqctx->scratch_pad + 16)) =
    htons(assoclen);

 rc = generate_b0(req, ivptr, op_type);

 memset(ivptr + 15 - ivptr[0], 0, ivptr[0] + 1);
 return rc;
}
