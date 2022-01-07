
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct crypto_tfm {int dummy; } ;
struct TYPE_2__ {int encrypt; } ;
struct aes_ctx {TYPE_1__ cword; int E; } ;


 struct aes_ctx* aes_ctx (struct crypto_tfm*) ;
 int ecb_crypt (int const*,int *,int ,int *,int) ;
 int padlock_reset_key (int *) ;
 int padlock_store_cword (int *) ;

__attribute__((used)) static void padlock_aes_encrypt(struct crypto_tfm *tfm, u8 *out, const u8 *in)
{
 struct aes_ctx *ctx = aes_ctx(tfm);

 padlock_reset_key(&ctx->cword.encrypt);
 ecb_crypt(in, out, ctx->E, &ctx->cword.encrypt, 1);
 padlock_store_cword(&ctx->cword.encrypt);
}
