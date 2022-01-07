
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int cg_flags; } ;


 int AMD_CG_SUPPORT_HDP_MGCG ;
 int HDP_HOST_PATH_CNTL__CLOCK_GATING_DIS_MASK ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int mmHDP_HOST_PATH_CNTL ;

__attribute__((used)) static void vi_update_hdp_medium_grain_clock_gating(struct amdgpu_device *adev,
          bool enable)
{
 uint32_t temp, data;

 temp = data = RREG32(mmHDP_HOST_PATH_CNTL);

 if (enable && (adev->cg_flags & AMD_CG_SUPPORT_HDP_MGCG))
  data &= ~HDP_HOST_PATH_CNTL__CLOCK_GATING_DIS_MASK;
 else
  data |= HDP_HOST_PATH_CNTL__CLOCK_GATING_DIS_MASK;

 if (temp != data)
  WREG32(mmHDP_HOST_PATH_CNTL, data);
}
