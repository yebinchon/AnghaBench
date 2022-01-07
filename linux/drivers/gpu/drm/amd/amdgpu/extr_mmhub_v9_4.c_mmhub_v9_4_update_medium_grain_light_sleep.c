
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int cg_flags; } ;


 int AMD_CG_SUPPORT_MC_LS ;
 int ATCL2_0_ATC_L2_MISC_CG__MEM_LS_ENABLE_MASK ;
 int MMHUB ;
 int MMHUB_INSTANCE_REGISTER_OFFSET ;
 int MMHUB_NUM_INSTANCES ;
 int RREG32_SOC15_OFFSET (int ,int ,int ,int) ;
 int WREG32_SOC15_OFFSET (int ,int ,int ,int,int ) ;
 int mmATCL2_0_ATC_L2_MISC_CG ;

__attribute__((used)) static void mmhub_v9_4_update_medium_grain_light_sleep(struct amdgpu_device *adev,
             bool enable)
{
 uint32_t def, data;
 int i;

 for (i = 0; i < MMHUB_NUM_INSTANCES; i++) {
  def = data = RREG32_SOC15_OFFSET(MMHUB, 0,
     mmATCL2_0_ATC_L2_MISC_CG,
     i * MMHUB_INSTANCE_REGISTER_OFFSET);

  if (enable && (adev->cg_flags & AMD_CG_SUPPORT_MC_LS))
   data |= ATCL2_0_ATC_L2_MISC_CG__MEM_LS_ENABLE_MASK;
  else
   data &= ~ATCL2_0_ATC_L2_MISC_CG__MEM_LS_ENABLE_MASK;

  if (def != data)
   WREG32_SOC15_OFFSET(MMHUB, 0, mmATCL2_0_ATC_L2_MISC_CG,
    i * MMHUB_INSTANCE_REGISTER_OFFSET, data);
 }
}
