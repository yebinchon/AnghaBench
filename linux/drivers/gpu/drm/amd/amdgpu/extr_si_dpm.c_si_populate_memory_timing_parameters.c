
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
typedef int u32 ;
struct rv7xx_pl {int mclk; int sclk; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_3__ {void* mc_arb_burst_time; void* mc_arb_dram_timing2; void* mc_arb_dram_timing; void* mc_arb_rfsh_rate; } ;
typedef TYPE_1__ SMC_SIslands_MCArbDramTimingRegisterSet ;


 int MC_ARB_BURST_TIME ;
 int MC_ARB_DRAM_TIMING ;
 int MC_ARB_DRAM_TIMING2 ;
 int RREG32 (int ) ;
 int STATE0_MASK ;
 int amdgpu_atombios_set_engine_dram_timings (struct amdgpu_device*,int ,int ) ;
 void* cpu_to_be32 (int) ;
 scalar_t__ si_calculate_memory_refresh_rate (struct amdgpu_device*,int ) ;

__attribute__((used)) static int si_populate_memory_timing_parameters(struct amdgpu_device *adev,
      struct rv7xx_pl *pl,
      SMC_SIslands_MCArbDramTimingRegisterSet *arb_regs)
{
 u32 dram_timing;
 u32 dram_timing2;
 u32 burst_time;

 arb_regs->mc_arb_rfsh_rate =
  (u8)si_calculate_memory_refresh_rate(adev, pl->sclk);

 amdgpu_atombios_set_engine_dram_timings(adev,
         pl->sclk,
                              pl->mclk);

 dram_timing = RREG32(MC_ARB_DRAM_TIMING);
 dram_timing2 = RREG32(MC_ARB_DRAM_TIMING2);
 burst_time = RREG32(MC_ARB_BURST_TIME) & STATE0_MASK;

 arb_regs->mc_arb_dram_timing = cpu_to_be32(dram_timing);
 arb_regs->mc_arb_dram_timing2 = cpu_to_be32(dram_timing2);
 arb_regs->mc_arb_burst_time = (u8)burst_time;

 return 0;
}
