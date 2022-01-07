
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct rv7xx_pl {int mclk; int sclk; } ;
struct radeon_device {int dummy; } ;
struct TYPE_3__ {void* mc_arb_dram_timing2; void* mc_arb_dram_timing; scalar_t__ mc_arb_rfsh_rate; } ;
typedef TYPE_1__ SMC_NIslands_MCArbDramTimingRegisterSet ;


 int MC_ARB_DRAM_TIMING ;
 int MC_ARB_DRAM_TIMING2 ;
 int RREG32 (int ) ;
 void* cpu_to_be32 (int ) ;
 int radeon_atom_set_engine_dram_timings (struct radeon_device*,int ,int ) ;
 scalar_t__ rv770_calculate_memory_refresh_rate (struct radeon_device*,int ) ;

__attribute__((used)) static int ni_populate_memory_timing_parameters(struct radeon_device *rdev,
      struct rv7xx_pl *pl,
      SMC_NIslands_MCArbDramTimingRegisterSet *arb_regs)
{
 u32 dram_timing;
 u32 dram_timing2;

 arb_regs->mc_arb_rfsh_rate =
  (u8)rv770_calculate_memory_refresh_rate(rdev, pl->sclk);


 radeon_atom_set_engine_dram_timings(rdev, pl->sclk, pl->mclk);

 dram_timing = RREG32(MC_ARB_DRAM_TIMING);
 dram_timing2 = RREG32(MC_ARB_DRAM_TIMING2);

 arb_regs->mc_arb_dram_timing = cpu_to_be32(dram_timing);
 arb_regs->mc_arb_dram_timing2 = cpu_to_be32(dram_timing2);

 return 0;
}
