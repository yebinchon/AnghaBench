
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zip_kernel_ctx {int dummy; } ;
struct crypto_scomp {int dummy; } ;


 int zip_compress (int const*,unsigned int,int *,unsigned int*,struct zip_kernel_ctx*) ;

int zip_scomp_compress(struct crypto_scomp *tfm,
         const u8 *src, unsigned int slen,
         u8 *dst, unsigned int *dlen, void *ctx)
{
 int ret;
 struct zip_kernel_ctx *zip_ctx = ctx;

 ret = zip_compress(src, slen, dst, dlen, zip_ctx);

 return ret;
}
