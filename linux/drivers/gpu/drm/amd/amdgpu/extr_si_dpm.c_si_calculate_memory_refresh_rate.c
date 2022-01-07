
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int MC_ARB_RAMCFG ;
 int MC_SEQ_MISC0 ;
 int NOOFROWS_MASK ;
 int NOOFROWS_SHIFT ;
 int RREG32 (int ) ;

__attribute__((used)) static u32 si_calculate_memory_refresh_rate(struct amdgpu_device *adev,
         u32 engine_clock)
{
 u32 dram_rows;
 u32 dram_refresh_rate;
 u32 mc_arb_rfsh_rate;
 u32 tmp = (RREG32(MC_ARB_RAMCFG) & NOOFROWS_MASK) >> NOOFROWS_SHIFT;

 if (tmp >= 4)
  dram_rows = 16384;
 else
  dram_rows = 1 << (tmp + 10);

 dram_refresh_rate = 1 << ((RREG32(MC_SEQ_MISC0) & 0x3) + 3);
 mc_arb_rfsh_rate = ((engine_clock * 10) * dram_refresh_rate / dram_rows - 32) / 64;

 return mc_arb_rfsh_rate;
}
