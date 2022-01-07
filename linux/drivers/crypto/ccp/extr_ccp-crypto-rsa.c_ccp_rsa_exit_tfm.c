
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_akcipher {int base; } ;
struct ccp_ctx {int dummy; } ;


 int ccp_rsa_free_key_bufs (struct ccp_ctx*) ;
 struct ccp_ctx* crypto_tfm_ctx (int *) ;

__attribute__((used)) static void ccp_rsa_exit_tfm(struct crypto_akcipher *tfm)
{
 struct ccp_ctx *ctx = crypto_tfm_ctx(&tfm->base);

 ccp_rsa_free_key_bufs(ctx);
}
