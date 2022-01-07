
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int dummy; } ;
struct caam_ctx {unsigned int authsize; } ;


 struct caam_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_rfc4106_check_authsize (unsigned int) ;
 int rfc4106_set_sh_desc (struct crypto_aead*) ;

__attribute__((used)) static int rfc4106_setauthsize(struct crypto_aead *authenc,
          unsigned int authsize)
{
 struct caam_ctx *ctx = crypto_aead_ctx(authenc);
 int err;

 err = crypto_rfc4106_check_authsize(authsize);
 if (err)
  return err;

 ctx->authsize = authsize;
 rfc4106_set_sh_desc(authenc);

 return 0;
}
