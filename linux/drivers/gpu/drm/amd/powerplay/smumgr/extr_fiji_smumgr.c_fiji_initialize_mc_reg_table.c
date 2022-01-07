
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int device; } ;


 int cgs_read_register (int ,int ) ;
 int cgs_write_register (int ,int ,int ) ;
 int mmMC_SEQ_CAS_TIMING ;
 int mmMC_SEQ_CAS_TIMING_LP ;
 int mmMC_SEQ_MISC_TIMING2 ;
 int mmMC_SEQ_MISC_TIMING2_LP ;
 int mmMC_SEQ_PMG_TIMING ;
 int mmMC_SEQ_PMG_TIMING_LP ;
 int mmMC_SEQ_RAS_TIMING ;
 int mmMC_SEQ_RAS_TIMING_LP ;
 int mmMC_SEQ_RD_CTL_D0 ;
 int mmMC_SEQ_RD_CTL_D0_LP ;
 int mmMC_SEQ_RD_CTL_D1 ;
 int mmMC_SEQ_RD_CTL_D1_LP ;
 int mmMC_SEQ_WR_CTL_D1 ;
 int mmMC_SEQ_WR_CTL_D1_LP ;

__attribute__((used)) static int fiji_initialize_mc_reg_table(struct pp_hwmgr *hwmgr)
{




 cgs_write_register(hwmgr->device, mmMC_SEQ_RAS_TIMING_LP,
   cgs_read_register(hwmgr->device, mmMC_SEQ_RAS_TIMING));
 cgs_write_register(hwmgr->device, mmMC_SEQ_CAS_TIMING_LP,
   cgs_read_register(hwmgr->device, mmMC_SEQ_CAS_TIMING));
 cgs_write_register(hwmgr->device, mmMC_SEQ_MISC_TIMING2_LP,
   cgs_read_register(hwmgr->device, mmMC_SEQ_MISC_TIMING2));
 cgs_write_register(hwmgr->device, mmMC_SEQ_WR_CTL_D1_LP,
   cgs_read_register(hwmgr->device, mmMC_SEQ_WR_CTL_D1));
 cgs_write_register(hwmgr->device, mmMC_SEQ_RD_CTL_D0_LP,
   cgs_read_register(hwmgr->device, mmMC_SEQ_RD_CTL_D0));
 cgs_write_register(hwmgr->device, mmMC_SEQ_RD_CTL_D1_LP,
   cgs_read_register(hwmgr->device, mmMC_SEQ_RD_CTL_D1));
 cgs_write_register(hwmgr->device, mmMC_SEQ_PMG_TIMING_LP,
   cgs_read_register(hwmgr->device, mmMC_SEQ_PMG_TIMING));

 return 0;
}
