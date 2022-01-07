
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct amdgpu_device {int cg_flags; } ;


 int AMD_CG_SUPPORT_HDP_MGCG ;
 int CLOCK_GATING_DIS ;
 int HDP_HOST_PATH_CNTL ;
 scalar_t__ REG_SET_FIELD (scalar_t__,int ,int ,int) ;
 scalar_t__ RREG32 (int ) ;
 int WREG32 (int ,scalar_t__) ;
 int mmHDP_HOST_PATH_CNTL ;

__attribute__((used)) static void gmc_v7_0_enable_hdp_mgcg(struct amdgpu_device *adev,
         bool enable)
{
 u32 orig, data;

 orig = data = RREG32(mmHDP_HOST_PATH_CNTL);

 if (enable && (adev->cg_flags & AMD_CG_SUPPORT_HDP_MGCG))
  data = REG_SET_FIELD(data, HDP_HOST_PATH_CNTL, CLOCK_GATING_DIS, 0);
 else
  data = REG_SET_FIELD(data, HDP_HOST_PATH_CNTL, CLOCK_GATING_DIS, 1);

 if (orig != data)
  WREG32(mmHDP_HOST_PATH_CNTL, data);
}
