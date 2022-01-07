
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {scalar_t__ adev; } ;
struct amdgpu_device {int dummy; } ;
typedef enum BACO_STATE { ____Placeholder_BACO_STATE } BACO_STATE ;


 int BACO_CNTL__BACO_MODE_MASK ;
 int BACO_STATE_IN ;
 int BACO_STATE_OUT ;
 int NBIF ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int mmBACO_CNTL ;

int smu9_baco_get_state(struct pp_hwmgr *hwmgr, enum BACO_STATE *state)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)(hwmgr->adev);
 uint32_t reg;

 reg = RREG32_SOC15(NBIF, 0, mmBACO_CNTL);

 if (reg & BACO_CNTL__BACO_MODE_MASK)

  *state = BACO_STATE_IN;
 else
  *state = BACO_STATE_OUT;
 return 0;
}
