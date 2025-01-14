
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;
struct evergreen_arb_registers {int mc_arb_rfsh_rate; int mc_arb_burst_time; int mc_arb_dram_timing2; int mc_arb_dram_timing; } ;


 int MC_ARB_BURST_TIME ;
 int MC_ARB_DRAM_TIMING ;
 int MC_ARB_DRAM_TIMING2 ;
 int MC_ARB_RFSH_RATE ;
 int POWERMODE0 (int) ;
 int POWERMODE0_MASK ;
 int POWERMODE0_SHIFT ;
 int STATE0 (int) ;
 int STATE0_MASK ;
 int STATE0_SHIFT ;
 int WREG32 (int ,int ) ;
 int WREG32_P (int ,int ,int) ;

__attribute__((used)) static void btc_set_arb0_registers(struct radeon_device *rdev,
       struct evergreen_arb_registers *arb_registers)
{
 u32 val;

 WREG32(MC_ARB_DRAM_TIMING, arb_registers->mc_arb_dram_timing);
 WREG32(MC_ARB_DRAM_TIMING2, arb_registers->mc_arb_dram_timing2);

 val = (arb_registers->mc_arb_rfsh_rate & POWERMODE0_MASK) >>
  POWERMODE0_SHIFT;
 WREG32_P(MC_ARB_RFSH_RATE, POWERMODE0(val), ~POWERMODE0_MASK);

 val = (arb_registers->mc_arb_burst_time & STATE0_MASK) >>
  STATE0_SHIFT;
 WREG32_P(MC_ARB_BURST_TIME, STATE0(val), ~STATE0_MASK);
}
