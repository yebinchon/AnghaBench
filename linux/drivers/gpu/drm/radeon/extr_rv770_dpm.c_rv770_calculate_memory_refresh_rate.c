
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int MC_ARB_RAMCFG ;
 int MC_SEQ_MISC0 ;
 int NOOFROWS_MASK ;
 int NOOFROWS_SHIFT ;
 int RREG32 (int ) ;

u32 rv770_calculate_memory_refresh_rate(struct radeon_device *rdev,
     u32 engine_clock)
{
 u32 dram_rows;
 u32 dram_refresh_rate;
 u32 mc_arb_rfsh_rate;
 u32 tmp;

 tmp = (RREG32(MC_ARB_RAMCFG) & NOOFROWS_MASK) >> NOOFROWS_SHIFT;
 dram_rows = 1 << (tmp + 10);
 tmp = RREG32(MC_SEQ_MISC0) & 3;
 dram_refresh_rate = 1 << (tmp + 3);
 mc_arb_rfsh_rate = ((engine_clock * 10) * dram_refresh_rate / dram_rows - 32) / 64;

 return mc_arb_rfsh_rate;
}
