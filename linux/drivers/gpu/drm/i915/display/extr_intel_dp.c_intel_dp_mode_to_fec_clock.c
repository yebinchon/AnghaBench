
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DP_DSC_FEC_OVERHEAD_FACTOR ;
 int div_u64 (int ,int ) ;
 int mul_u32_u32 (int ,unsigned int) ;

u32 intel_dp_mode_to_fec_clock(u32 mode_clock)
{
 return div_u64(mul_u32_u32(mode_clock, 1000000U),
         DP_DSC_FEC_OVERHEAD_FACTOR);
}
