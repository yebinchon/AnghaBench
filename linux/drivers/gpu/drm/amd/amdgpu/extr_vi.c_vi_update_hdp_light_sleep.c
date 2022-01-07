
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int cg_flags; } ;


 int AMD_CG_SUPPORT_HDP_LS ;
 int HDP_MEM_POWER_LS__LS_ENABLE_MASK ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int mmHDP_MEM_POWER_LS ;

__attribute__((used)) static void vi_update_hdp_light_sleep(struct amdgpu_device *adev,
          bool enable)
{
 uint32_t temp, data;

 temp = data = RREG32(mmHDP_MEM_POWER_LS);

 if (enable && (adev->cg_flags & AMD_CG_SUPPORT_HDP_LS))
  data |= HDP_MEM_POWER_LS__LS_ENABLE_MASK;
 else
  data &= ~HDP_MEM_POWER_LS__LS_ENABLE_MASK;

 if (temp != data)
  WREG32(mmHDP_MEM_POWER_LS, data);
}
