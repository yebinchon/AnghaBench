
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {scalar_t__ adev; } ;
struct amdgpu_device {int dummy; } ;
typedef enum BACO_STATE { ____Placeholder_BACO_STATE } BACO_STATE ;


 int ARRAY_SIZE (int ) ;
 int BACO_STATE_IN ;
 int BACO_STATE_OUT ;
 int EINVAL ;
 int PPSMC_MSG_EnterBaco ;
 int PPSMC_MSG_ExitBaco ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int THM ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int clean_baco_tbl ;
 int mmTHM_BACO_CNTL ;
 scalar_t__ smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;
 scalar_t__ smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int ) ;
 int soc15_baco_program_registers (struct pp_hwmgr*,int ,int ) ;
 int vega20_baco_get_state (struct pp_hwmgr*,int*) ;

int vega20_baco_set_state(struct pp_hwmgr *hwmgr, enum BACO_STATE state)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)(hwmgr->adev);
 enum BACO_STATE cur_state;
 uint32_t data;

 vega20_baco_get_state(hwmgr, &cur_state);

 if (cur_state == state)

  return 0;

 if (state == BACO_STATE_IN) {
  data = RREG32_SOC15(THM, 0, mmTHM_BACO_CNTL);
  data |= 0x80000000;
  WREG32_SOC15(THM, 0, mmTHM_BACO_CNTL, data);


  if(smum_send_msg_to_smc_with_parameter(hwmgr, PPSMC_MSG_EnterBaco, 0))
   return -EINVAL;

 } else if (state == BACO_STATE_OUT) {
  if (smum_send_msg_to_smc(hwmgr, PPSMC_MSG_ExitBaco))
   return -EINVAL;
  if (!soc15_baco_program_registers(hwmgr, clean_baco_tbl,
           ARRAY_SIZE(clean_baco_tbl)))
   return -EINVAL;
 }

 return 0;
}
