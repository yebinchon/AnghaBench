
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_kernel_ctx {int dummy; } ;
struct crypto_scomp {int dummy; } ;


 int kzfree (struct zip_kernel_ctx*) ;
 int zip_ctx_exit (struct zip_kernel_ctx*) ;

void zip_free_scomp_ctx(struct crypto_scomp *tfm, void *ctx)
{
 struct zip_kernel_ctx *zip_ctx = ctx;

 zip_ctx_exit(zip_ctx);
 kzfree(zip_ctx);
}
