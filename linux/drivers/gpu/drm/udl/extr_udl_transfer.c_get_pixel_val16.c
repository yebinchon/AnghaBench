
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int u16 ;


 int pixel32_to_be16 (int const) ;

__attribute__((used)) static inline u16 get_pixel_val16(const uint8_t *pixel, int log_bpp)
{
 u16 pixel_val16;
 if (log_bpp == 1)
  pixel_val16 = *(const uint16_t *)pixel;
 else
  pixel_val16 = pixel32_to_be16(*(const uint32_t *)pixel);
 return pixel_val16;
}
