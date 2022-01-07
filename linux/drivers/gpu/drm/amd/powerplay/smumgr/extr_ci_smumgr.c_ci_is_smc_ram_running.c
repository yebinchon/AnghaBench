
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int device; } ;


 int CGS_IND_REG__SMC ;
 scalar_t__ PHM_READ_VFPF_INDIRECT_FIELD (int ,int ,int ,int ) ;
 int SMC_SYSCON_CLOCK_CNTL_0 ;
 int cgs_read_ind_register (int ,int ,int ) ;
 int ck_disable ;
 int ixSMC_PC_C ;

bool ci_is_smc_ram_running(struct pp_hwmgr *hwmgr)
{
 return ((0 == PHM_READ_VFPF_INDIRECT_FIELD(hwmgr->device,
   CGS_IND_REG__SMC, SMC_SYSCON_CLOCK_CNTL_0, ck_disable))
 && (0x20100 <= cgs_read_ind_register(hwmgr->device,
   CGS_IND_REG__SMC, ixSMC_PC_C)));
}
