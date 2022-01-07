
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_kernel_ctx {int dummy; } ;
struct crypto_tfm {int dummy; } ;


 struct zip_kernel_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int zip_ctx_init (struct zip_kernel_ctx*,int ) ;

int zip_alloc_comp_ctx_deflate(struct crypto_tfm *tfm)
{
 int ret;
 struct zip_kernel_ctx *zip_ctx = crypto_tfm_ctx(tfm);

 ret = zip_ctx_init(zip_ctx, 0);

 return ret;
}
