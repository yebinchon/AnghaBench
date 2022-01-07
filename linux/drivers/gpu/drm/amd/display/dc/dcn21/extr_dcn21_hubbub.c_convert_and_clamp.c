
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t convert_and_clamp(
 uint32_t wm_ns,
 uint32_t refclk_mhz,
 uint32_t clamp_value)
{
 uint32_t ret_val = 0;
 ret_val = wm_ns * refclk_mhz;
 ret_val /= 1000;

 if (ret_val > clamp_value)
  ret_val = clamp_value;

 return ret_val;
}
