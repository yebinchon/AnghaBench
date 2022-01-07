
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixp_ctx {int decrypt; int encrypt; } ;
struct crypto_tfm {int dummy; } ;


 struct ixp_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int free_sa_dir (int *) ;

__attribute__((used)) static void exit_tfm(struct crypto_tfm *tfm)
{
 struct ixp_ctx *ctx = crypto_tfm_ctx(tfm);
 free_sa_dir(&ctx->encrypt);
 free_sa_dir(&ctx->decrypt);
}
