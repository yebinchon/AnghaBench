
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu7_smumgr {scalar_t__ soft_regs_start; } ;
struct pp_hwmgr {scalar_t__ smu_backend; } ;


 int SMU_SoftRegisters ;
 int UcodeLoadStatus ;
 int mmSMC_IND_INDEX_11 ;
 int phm_wait_on_indirect_register (struct pp_hwmgr*,int ,scalar_t__,int,int) ;
 scalar_t__ smum_get_offsetof (struct pp_hwmgr*,int ,int ) ;

int smu7_check_fw_load_finish(struct pp_hwmgr *hwmgr, uint32_t fw_type)
{
 struct smu7_smumgr *smu_data = (struct smu7_smumgr *)(hwmgr->smu_backend);
 uint32_t ret;

 ret = phm_wait_on_indirect_register(hwmgr, mmSMC_IND_INDEX_11,
     smu_data->soft_regs_start + smum_get_offsetof(hwmgr,
     SMU_SoftRegisters, UcodeLoadStatus),
     fw_type, fw_type);
 return ret;
}
