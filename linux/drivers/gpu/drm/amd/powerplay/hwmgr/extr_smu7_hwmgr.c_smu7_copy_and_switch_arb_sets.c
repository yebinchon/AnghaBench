
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {int device; } ;


 int CG_ARB_REQ ;
 int EINVAL ;
 int MC_ARB_BURST_TIME ;
 int MC_ARB_CG ;


 int PHM_READ_FIELD (int ,int ,int ) ;
 int PHM_WRITE_FIELD (int ,int ,int ,int) ;
 int STATE0 ;
 int STATE1 ;
 int cgs_read_register (int ,int ) ;
 int cgs_write_register (int ,int ,int) ;
 int mmMC_ARB_DRAM_TIMING ;
 int mmMC_ARB_DRAM_TIMING2 ;
 int mmMC_ARB_DRAM_TIMING2_1 ;
 int mmMC_ARB_DRAM_TIMING_1 ;
 int mmMC_CG_CONFIG ;

__attribute__((used)) static int smu7_copy_and_switch_arb_sets(struct pp_hwmgr *hwmgr,
  uint32_t arb_src, uint32_t arb_dest)
{
 uint32_t mc_arb_dram_timing;
 uint32_t mc_arb_dram_timing2;
 uint32_t burst_time;
 uint32_t mc_cg_config;

 switch (arb_src) {
 case 129:
  mc_arb_dram_timing = cgs_read_register(hwmgr->device, mmMC_ARB_DRAM_TIMING);
  mc_arb_dram_timing2 = cgs_read_register(hwmgr->device, mmMC_ARB_DRAM_TIMING2);
  burst_time = PHM_READ_FIELD(hwmgr->device, MC_ARB_BURST_TIME, STATE0);
  break;
 case 128:
  mc_arb_dram_timing = cgs_read_register(hwmgr->device, mmMC_ARB_DRAM_TIMING_1);
  mc_arb_dram_timing2 = cgs_read_register(hwmgr->device, mmMC_ARB_DRAM_TIMING2_1);
  burst_time = PHM_READ_FIELD(hwmgr->device, MC_ARB_BURST_TIME, STATE1);
  break;
 default:
  return -EINVAL;
 }

 switch (arb_dest) {
 case 129:
  cgs_write_register(hwmgr->device, mmMC_ARB_DRAM_TIMING, mc_arb_dram_timing);
  cgs_write_register(hwmgr->device, mmMC_ARB_DRAM_TIMING2, mc_arb_dram_timing2);
  PHM_WRITE_FIELD(hwmgr->device, MC_ARB_BURST_TIME, STATE0, burst_time);
  break;
 case 128:
  cgs_write_register(hwmgr->device, mmMC_ARB_DRAM_TIMING_1, mc_arb_dram_timing);
  cgs_write_register(hwmgr->device, mmMC_ARB_DRAM_TIMING2_1, mc_arb_dram_timing2);
  PHM_WRITE_FIELD(hwmgr->device, MC_ARB_BURST_TIME, STATE1, burst_time);
  break;
 default:
  return -EINVAL;
 }

 mc_cg_config = cgs_read_register(hwmgr->device, mmMC_CG_CONFIG);
 mc_cg_config |= 0x0000000F;
 cgs_write_register(hwmgr->device, mmMC_CG_CONFIG, mc_cg_config);
 PHM_WRITE_FIELD(hwmgr->device, MC_ARB_CG, CG_ARB_REQ, arb_dest);

 return 0;
}
