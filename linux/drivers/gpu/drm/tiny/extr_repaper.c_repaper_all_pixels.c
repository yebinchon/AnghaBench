
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u16 ;
struct repaper_epd {int width; } ;
typedef enum repaper_stage { ____Placeholder_repaper_stage } repaper_stage ;






 int repaper_interleave_bits (void* const) ;

__attribute__((used)) static void repaper_all_pixels(struct repaper_epd *epd, u8 **pp,
          const u8 *data, u8 fixed_value, const u8 *mask,
          enum repaper_stage stage)
{
 unsigned int b;

 for (b = epd->width / 8; b > 0; b--) {
  if (data) {
   u16 pixels = repaper_interleave_bits(data[b - 1]);
   u16 pixel_mask = 0xffff;

   if (mask) {
    pixel_mask = repaper_interleave_bits(mask[b - 1]);

    pixel_mask = (pixel_mask ^ pixels) & 0x5555;
    pixel_mask |= pixel_mask << 1;
   }

   switch (stage) {
   case 131:
    pixels = 0xaaaa | (pixels ^ 0x5555);
    break;
   case 128:
    pixels = 0x5555 + (pixels ^ 0x5555);
    break;
   case 130:
    pixels = 0x5555 | ((pixels ^ 0x5555) << 1);
    break;
   case 129:
    pixels = 0xaaaa | pixels;
    break;
   }

   pixels = (pixels & pixel_mask) | (~pixel_mask & 0x5555);
   *(*pp)++ = pixels >> 8;
   *(*pp)++ = pixels;
  } else {
   *(*pp)++ = fixed_value;
   *(*pp)++ = fixed_value;
  }
 }
}
