
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int dummy; } ;
struct caam_ctx {unsigned int authsize; } ;


 int aead_set_sh_desc (struct crypto_aead*) ;
 struct caam_ctx* crypto_aead_ctx (struct crypto_aead*) ;

__attribute__((used)) static int aead_setauthsize(struct crypto_aead *authenc, unsigned int authsize)
{
 struct caam_ctx *ctx = crypto_aead_ctx(authenc);

 ctx->authsize = authsize;
 aead_set_sh_desc(authenc);

 return 0;
}
