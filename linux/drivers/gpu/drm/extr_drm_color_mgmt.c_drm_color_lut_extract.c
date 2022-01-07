
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int clamp_val (int,int ,int) ;

uint32_t drm_color_lut_extract(uint32_t user_input, uint32_t bit_precision)
{
 uint32_t val = user_input;
 uint32_t max = 0xffff >> (16 - bit_precision);


 if (bit_precision < 16) {
  val += 1UL << (16 - bit_precision - 1);
  val >>= 16 - bit_precision;
 }

 return clamp_val(val, 0, max);
}
