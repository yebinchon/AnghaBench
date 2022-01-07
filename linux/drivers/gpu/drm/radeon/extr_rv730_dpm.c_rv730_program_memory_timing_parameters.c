
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int mclk; int sclk; } ;
struct TYPE_5__ {int mclk; int sclk; } ;
struct TYPE_4__ {int mclk; int sclk; } ;
struct rv7xx_ps {TYPE_3__ low; TYPE_2__ medium; TYPE_1__ high; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;


 int MC_ARB_DRAM_TIMING ;
 int MC_ARB_DRAM_TIMING2 ;
 int MC_ARB_DRAM_TIMING2_1 ;
 int MC_ARB_DRAM_TIMING2_2 ;
 int MC_ARB_DRAM_TIMING2_3 ;
 int MC_ARB_DRAM_TIMING_1 ;
 int MC_ARB_DRAM_TIMING_2 ;
 int MC_ARB_DRAM_TIMING_3 ;
 int MC_ARB_RFSH_RATE ;
 int POWERMODE1 (int ) ;
 int POWERMODE1_MASK ;
 int POWERMODE2 (int ) ;
 int POWERMODE2_MASK ;
 int POWERMODE3 (int ) ;
 int POWERMODE3_MASK ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int radeon_atom_set_engine_dram_timings (struct radeon_device*,int ,int ) ;
 int rv770_calculate_memory_refresh_rate (struct radeon_device*,int ) ;
 struct rv7xx_ps* rv770_get_ps (struct radeon_ps*) ;

void rv730_program_memory_timing_parameters(struct radeon_device *rdev,
         struct radeon_ps *radeon_state)
{
 struct rv7xx_ps *state = rv770_get_ps(radeon_state);
 u32 arb_refresh_rate = 0;
 u32 dram_timing = 0;
 u32 dram_timing2 = 0;
 u32 old_dram_timing = 0;
 u32 old_dram_timing2 = 0;

 arb_refresh_rate = RREG32(MC_ARB_RFSH_RATE) &
  ~(POWERMODE1_MASK | POWERMODE2_MASK | POWERMODE3_MASK);
 arb_refresh_rate |=
  (POWERMODE1(rv770_calculate_memory_refresh_rate(rdev, state->low.sclk)) |
   POWERMODE2(rv770_calculate_memory_refresh_rate(rdev, state->medium.sclk)) |
   POWERMODE3(rv770_calculate_memory_refresh_rate(rdev, state->high.sclk)));
 WREG32(MC_ARB_RFSH_RATE, arb_refresh_rate);


 old_dram_timing = RREG32(MC_ARB_DRAM_TIMING);
 old_dram_timing2 = RREG32(MC_ARB_DRAM_TIMING2);

 radeon_atom_set_engine_dram_timings(rdev,
         state->high.sclk,
         state->high.mclk);

 dram_timing = RREG32(MC_ARB_DRAM_TIMING);
 dram_timing2 = RREG32(MC_ARB_DRAM_TIMING2);

 WREG32(MC_ARB_DRAM_TIMING_3, dram_timing);
 WREG32(MC_ARB_DRAM_TIMING2_3, dram_timing2);

 radeon_atom_set_engine_dram_timings(rdev,
         state->medium.sclk,
         state->medium.mclk);

 dram_timing = RREG32(MC_ARB_DRAM_TIMING);
 dram_timing2 = RREG32(MC_ARB_DRAM_TIMING2);

 WREG32(MC_ARB_DRAM_TIMING_2, dram_timing);
 WREG32(MC_ARB_DRAM_TIMING2_2, dram_timing2);

 radeon_atom_set_engine_dram_timings(rdev,
         state->low.sclk,
         state->low.mclk);

 dram_timing = RREG32(MC_ARB_DRAM_TIMING);
 dram_timing2 = RREG32(MC_ARB_DRAM_TIMING2);

 WREG32(MC_ARB_DRAM_TIMING_1, dram_timing);
 WREG32(MC_ARB_DRAM_TIMING2_1, dram_timing2);


 WREG32(MC_ARB_DRAM_TIMING, old_dram_timing);
 WREG32(MC_ARB_DRAM_TIMING2, old_dram_timing2);

}
