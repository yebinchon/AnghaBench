
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct repaper_epd {int width; } ;
typedef enum repaper_stage { ____Placeholder_repaper_stage } repaper_stage ;







__attribute__((used)) static void repaper_odd_pixels(struct repaper_epd *epd, u8 **pp,
          const u8 *data, u8 fixed_value, const u8 *mask,
          enum repaper_stage stage)
{
 unsigned int b;

 for (b = epd->width / 8; b > 0; b--) {
  if (data) {
   u8 pixels = data[b - 1] & 0x55;
   u8 pixel_mask = 0xff;

   if (mask) {
    pixel_mask = (mask[b - 1] ^ pixels) & 0x55;
    pixel_mask |= pixel_mask << 1;
   }

   switch (stage) {
   case 131:
    pixels = 0xaa | (pixels ^ 0x55);
    break;
   case 128:
    pixels = 0x55 + (pixels ^ 0x55);
    break;
   case 130:
    pixels = 0x55 | ((pixels ^ 0x55) << 1);
    break;
   case 129:
    pixels = 0xaa | pixels;
    break;
   }

   pixels = (pixels & pixel_mask) | (~pixel_mask & 0x55);
   *(*pp)++ = pixels;
  } else {
   *(*pp)++ = fixed_value;
  }
 }
}
