
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PAL_PREC_SPLIT_MODE ;

__attribute__((used)) static int ivb_lut_10_size(u32 prec_index)
{
 if (prec_index & PAL_PREC_SPLIT_MODE)
  return 512;
 else
  return 1024;
}
