
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 atmel_hlcdc_plane_phiscaler_get_factor(u32 srcsize,
        u32 dstsize,
        u32 phidef)
{
 u32 factor, max_memsize;

 factor = (256 * ((8 * (srcsize - 1)) - phidef)) / (dstsize - 1);
 max_memsize = ((factor * (dstsize - 1)) + (256 * phidef)) / 2048;

 if (max_memsize > srcsize - 1)
  factor--;

 return factor;
}
