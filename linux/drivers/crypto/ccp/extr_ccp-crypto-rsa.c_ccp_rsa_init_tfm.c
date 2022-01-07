
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_akcipher {int dummy; } ;
struct ccp_rsa_req_ctx {int dummy; } ;
struct ccp_ctx {int complete; } ;


 int akcipher_set_reqsize (struct crypto_akcipher*,int) ;
 struct ccp_ctx* akcipher_tfm_ctx (struct crypto_akcipher*) ;
 int ccp_rsa_complete ;

__attribute__((used)) static int ccp_rsa_init_tfm(struct crypto_akcipher *tfm)
{
 struct ccp_ctx *ctx = akcipher_tfm_ctx(tfm);

 akcipher_set_reqsize(tfm, sizeof(struct ccp_rsa_req_ctx));
 ctx->complete = ccp_rsa_complete;

 return 0;
}
