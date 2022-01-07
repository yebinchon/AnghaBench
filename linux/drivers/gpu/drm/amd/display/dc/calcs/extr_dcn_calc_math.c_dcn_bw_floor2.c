
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
float dcn_bw_floor2(const float arg, const float significance)
{
 if (significance == 0)
  return 0;
 return ((int) (arg / significance)) * significance;
}
