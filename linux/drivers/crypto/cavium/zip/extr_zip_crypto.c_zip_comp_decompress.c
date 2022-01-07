
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zip_kernel_ctx {int dummy; } ;
struct crypto_tfm {int dummy; } ;


 struct zip_kernel_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int zip_decompress (int const*,unsigned int,int *,unsigned int*,struct zip_kernel_ctx*) ;

int zip_comp_decompress(struct crypto_tfm *tfm,
    const u8 *src, unsigned int slen,
    u8 *dst, unsigned int *dlen)
{
 int ret;
 struct zip_kernel_ctx *zip_ctx = crypto_tfm_ctx(tfm);

 ret = zip_decompress(src, slen, dst, dlen, zip_ctx);

 return ret;
}
