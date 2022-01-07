
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CG_ARB_REQ (int) ;
 int CG_ARB_REQ_MASK ;
 int EINVAL ;
 int MC_ARB_BURST_TIME ;
 int MC_ARB_CG ;
 int MC_ARB_DRAM_TIMING ;
 int MC_ARB_DRAM_TIMING2 ;
 int MC_ARB_DRAM_TIMING2_1 ;
 int MC_ARB_DRAM_TIMING2_2 ;
 int MC_ARB_DRAM_TIMING2_3 ;
 int MC_ARB_DRAM_TIMING_1 ;
 int MC_ARB_DRAM_TIMING_2 ;
 int MC_ARB_DRAM_TIMING_3 ;




 int MC_CG_CONFIG ;
 int RREG32 (int ) ;
 int STATE0 (int) ;
 int STATE0_MASK ;
 int STATE0_SHIFT ;
 int STATE1 (int) ;
 int STATE1_MASK ;
 int STATE1_SHIFT ;
 int STATE2 (int) ;
 int STATE2_MASK ;
 int STATE2_SHIFT ;
 int STATE3 (int) ;
 int STATE3_MASK ;
 int STATE3_SHIFT ;
 int WREG32 (int ,int) ;
 int WREG32_P (int ,int ,int) ;

int ni_copy_and_switch_arb_sets(struct radeon_device *rdev,
    u32 arb_freq_src, u32 arb_freq_dest)
{
 u32 mc_arb_dram_timing;
 u32 mc_arb_dram_timing2;
 u32 burst_time;
 u32 mc_cg_config;

 switch (arb_freq_src) {
 case 131:
  mc_arb_dram_timing = RREG32(MC_ARB_DRAM_TIMING);
  mc_arb_dram_timing2 = RREG32(MC_ARB_DRAM_TIMING2);
  burst_time = (RREG32(MC_ARB_BURST_TIME) & STATE0_MASK) >> STATE0_SHIFT;
  break;
 case 130:
  mc_arb_dram_timing = RREG32(MC_ARB_DRAM_TIMING_1);
  mc_arb_dram_timing2 = RREG32(MC_ARB_DRAM_TIMING2_1);
  burst_time = (RREG32(MC_ARB_BURST_TIME) & STATE1_MASK) >> STATE1_SHIFT;
  break;
 case 129:
  mc_arb_dram_timing = RREG32(MC_ARB_DRAM_TIMING_2);
  mc_arb_dram_timing2 = RREG32(MC_ARB_DRAM_TIMING2_2);
  burst_time = (RREG32(MC_ARB_BURST_TIME) & STATE2_MASK) >> STATE2_SHIFT;
  break;
 case 128:
  mc_arb_dram_timing = RREG32(MC_ARB_DRAM_TIMING_3);
  mc_arb_dram_timing2 = RREG32(MC_ARB_DRAM_TIMING2_3);
  burst_time = (RREG32(MC_ARB_BURST_TIME) & STATE3_MASK) >> STATE3_SHIFT;
  break;
 default:
  return -EINVAL;
 }

 switch (arb_freq_dest) {
 case 131:
  WREG32(MC_ARB_DRAM_TIMING, mc_arb_dram_timing);
  WREG32(MC_ARB_DRAM_TIMING2, mc_arb_dram_timing2);
  WREG32_P(MC_ARB_BURST_TIME, STATE0(burst_time), ~STATE0_MASK);
  break;
 case 130:
  WREG32(MC_ARB_DRAM_TIMING_1, mc_arb_dram_timing);
  WREG32(MC_ARB_DRAM_TIMING2_1, mc_arb_dram_timing2);
  WREG32_P(MC_ARB_BURST_TIME, STATE1(burst_time), ~STATE1_MASK);
  break;
 case 129:
  WREG32(MC_ARB_DRAM_TIMING_2, mc_arb_dram_timing);
  WREG32(MC_ARB_DRAM_TIMING2_2, mc_arb_dram_timing2);
  WREG32_P(MC_ARB_BURST_TIME, STATE2(burst_time), ~STATE2_MASK);
  break;
 case 128:
  WREG32(MC_ARB_DRAM_TIMING_3, mc_arb_dram_timing);
  WREG32(MC_ARB_DRAM_TIMING2_3, mc_arb_dram_timing2);
  WREG32_P(MC_ARB_BURST_TIME, STATE3(burst_time), ~STATE3_MASK);
  break;
 default:
  return -EINVAL;
 }

 mc_cg_config = RREG32(MC_CG_CONFIG) | 0x0000000F;
 WREG32(MC_CG_CONFIG, mc_cg_config);
 WREG32_P(MC_ARB_CG, CG_ARB_REQ(arb_freq_dest), ~CG_ARB_REQ_MASK);

 return 0;
}
