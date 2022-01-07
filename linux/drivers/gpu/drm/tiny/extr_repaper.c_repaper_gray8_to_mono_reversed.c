
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int BIT (int) ;

__attribute__((used)) static void repaper_gray8_to_mono_reversed(u8 *buf, u32 width, u32 height)
{
 u8 *gray8 = buf, *mono = buf;
 int y, xb, i;

 for (y = 0; y < height; y++)
  for (xb = 0; xb < width / 8; xb++) {
   u8 byte = 0x00;

   for (i = 0; i < 8; i++) {
    int x = xb * 8 + i;

    byte >>= 1;
    if (gray8[y * width + x] >> 7)
     byte |= BIT(7);
   }
   *mono++ = byte;
  }
}
