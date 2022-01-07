
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_fixed_16_16_t ;
typedef int u32 ;


 int DIV_ROUND_UP (int,int) ;
 int FP_16_16_MAX ;
 int mul_u32_fixed16 (int,int ) ;

__attribute__((used)) static uint_fixed_16_16_t
skl_wm_method2(u32 pixel_rate, u32 pipe_htotal, u32 latency,
        uint_fixed_16_16_t plane_blocks_per_line)
{
 u32 wm_intermediate_val;
 uint_fixed_16_16_t ret;

 if (latency == 0)
  return FP_16_16_MAX;

 wm_intermediate_val = latency * pixel_rate;
 wm_intermediate_val = DIV_ROUND_UP(wm_intermediate_val,
        pipe_htotal * 1000);
 ret = mul_u32_fixed16(wm_intermediate_val, plane_blocks_per_line);
 return ret;
}
