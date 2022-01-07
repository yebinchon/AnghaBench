
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static void gm12u320_32bpp_to_24bpp_packed(u8 *dst, u8 *src, int len)
{
 while (len--) {
  *dst++ = *src++;
  *dst++ = *src++;
  *dst++ = *src++;
  src++;
 }
}
