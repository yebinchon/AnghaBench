
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_kernel_ctx {int dummy; } ;
struct crypto_tfm {int dummy; } ;


 struct zip_kernel_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int zip_ctx_exit (struct zip_kernel_ctx*) ;

void zip_free_comp_ctx(struct crypto_tfm *tfm)
{
 struct zip_kernel_ctx *zip_ctx = crypto_tfm_ctx(tfm);

 zip_ctx_exit(zip_ctx);
}
