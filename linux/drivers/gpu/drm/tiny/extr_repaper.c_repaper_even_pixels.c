
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct repaper_epd {int width; } ;
typedef enum repaper_stage { ____Placeholder_repaper_stage } repaper_stage ;







__attribute__((used)) static void repaper_even_pixels(struct repaper_epd *epd, u8 **pp,
    const u8 *data, u8 fixed_value, const u8 *mask,
    enum repaper_stage stage)
{
 unsigned int b;

 for (b = 0; b < (epd->width / 8); b++) {
  if (data) {
   u8 pixels = data[b] & 0xaa;
   u8 pixel_mask = 0xff;
   u8 p1, p2, p3, p4;

   if (mask) {
    pixel_mask = (mask[b] ^ pixels) & 0xaa;
    pixel_mask |= pixel_mask >> 1;
   }

   switch (stage) {
   case 131:
    pixels = 0xaa | ((pixels ^ 0xaa) >> 1);
    break;
   case 128:
    pixels = 0x55 + ((pixels ^ 0xaa) >> 1);
    break;
   case 130:
    pixels = 0x55 | (pixels ^ 0xaa);
    break;
   case 129:
    pixels = 0xaa | (pixels >> 1);
    break;
   }

   pixels = (pixels & pixel_mask) | (~pixel_mask & 0x55);
   p1 = (pixels >> 6) & 0x03;
   p2 = (pixels >> 4) & 0x03;
   p3 = (pixels >> 2) & 0x03;
   p4 = (pixels >> 0) & 0x03;
   pixels = (p1 << 0) | (p2 << 2) | (p3 << 4) | (p4 << 6);
   *(*pp)++ = pixels;
  } else {
   *(*pp)++ = fixed_value;
  }
 }
}
