
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int GFP_DMA ;
 int GFP_KERNEL ;
 int caam_rsa_drop_leading_zeros (int const**,size_t*) ;
 int * kmemdup (int const*,size_t,int) ;

__attribute__((used)) static inline u8 *caam_read_raw_data(const u8 *buf, size_t *nbytes)
{

 caam_rsa_drop_leading_zeros(&buf, nbytes);
 if (!*nbytes)
  return ((void*)0);

 return kmemdup(buf, *nbytes, GFP_DMA | GFP_KERNEL);
}
