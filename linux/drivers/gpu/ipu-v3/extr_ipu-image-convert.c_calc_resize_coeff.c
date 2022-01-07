
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DIV_ROUND_CLOSEST (int,int) ;

__attribute__((used)) static u32 calc_resize_coeff(u32 input_size, u32 downsize_coeff,
        u32 output_size, bool allow_overshoot)
{
 u32 downsized = input_size >> downsize_coeff;

 if (allow_overshoot)
  return DIV_ROUND_CLOSEST(8192 * downsized, output_size);
 else
  return 8192 * (downsized - 1) / (output_size - 1);
}
