
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static int sc27xx_adc_get_calib_data(u32 calib_data, int calib_adc)
{
 return ((calib_data & 0xff) + calib_adc - 128) * 4;
}
