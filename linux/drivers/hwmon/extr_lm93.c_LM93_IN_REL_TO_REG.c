
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 long clamp_val (long,int,int) ;

__attribute__((used)) static u8 LM93_IN_REL_TO_REG(unsigned val, int upper, int vid)
{
 long uv_offset = vid * 1000 - val * 10000;
 if (upper) {
  uv_offset = clamp_val(uv_offset, 12500, 200000);
  return (u8)((uv_offset / 12500 - 1) << 4);
 } else {
  uv_offset = clamp_val(uv_offset, -400000, -25000);
  return (u8)((uv_offset / -25000 - 1) << 0);
 }
}
