
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static bool scaling_ratio_valid(u32 size_in, u32 size_out,
    u32 max_upscaling, u32 max_downscaling)
{
 if (size_out > size_in * max_upscaling)
  return 0;
 else if (size_in > size_out * max_downscaling)
  return 0;
 return 1;
}
