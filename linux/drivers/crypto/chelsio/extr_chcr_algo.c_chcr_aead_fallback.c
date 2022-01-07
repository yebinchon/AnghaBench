
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_aead {int dummy; } ;
struct chcr_aead_ctx {int sw_cipher; } ;
struct TYPE_2__ {int data; int complete; int flags; } ;
struct aead_request {int assoclen; int iv; int cryptlen; int dst; int src; TYPE_1__ base; } ;


 struct chcr_aead_ctx* AEAD_CTX (int ) ;
 int a_ctx (struct crypto_aead*) ;
 struct aead_request* aead_request_ctx (struct aead_request*) ;
 int aead_request_set_ad (struct aead_request*,int ) ;
 int aead_request_set_callback (struct aead_request*,int ,int ,int ) ;
 int aead_request_set_crypt (struct aead_request*,int ,int ,int ,int ) ;
 int aead_request_set_tfm (struct aead_request*,int ) ;
 int crypto_aead_decrypt (struct aead_request*) ;
 int crypto_aead_encrypt (struct aead_request*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;

__attribute__((used)) static int chcr_aead_fallback(struct aead_request *req, unsigned short op_type)
{
 struct crypto_aead *tfm = crypto_aead_reqtfm(req);
 struct chcr_aead_ctx *aeadctx = AEAD_CTX(a_ctx(tfm));
 struct aead_request *subreq = aead_request_ctx(req);

 aead_request_set_tfm(subreq, aeadctx->sw_cipher);
 aead_request_set_callback(subreq, req->base.flags,
      req->base.complete, req->base.data);
 aead_request_set_crypt(subreq, req->src, req->dst, req->cryptlen,
     req->iv);
 aead_request_set_ad(subreq, req->assoclen);
 return op_type ? crypto_aead_decrypt(subreq) :
  crypto_aead_encrypt(subreq);
}
