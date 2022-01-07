
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int GFP_DMA ;
 int GFP_KERNEL ;
 int caam_rsa_drop_leading_zeros (int const**,size_t*) ;
 int * kzalloc (size_t,int) ;
 int memcpy (int *,int const*,size_t) ;

__attribute__((used)) static u8 *caam_read_rsa_crt(const u8 *ptr, size_t nbytes, size_t dstlen)
{
 u8 *dst;

 caam_rsa_drop_leading_zeros(&ptr, &nbytes);
 if (!nbytes)
  return ((void*)0);

 dst = kzalloc(dstlen, GFP_DMA | GFP_KERNEL);
 if (!dst)
  return ((void*)0);

 memcpy(dst + (dstlen - nbytes), ptr, nbytes);

 return dst;
}
