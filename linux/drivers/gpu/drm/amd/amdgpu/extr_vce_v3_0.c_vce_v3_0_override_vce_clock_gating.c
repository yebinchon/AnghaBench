
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int VCE_CGTT_OVERRIDE ;
 int VCE_RB_ARB_CTRL ;
 int WREG32_FIELD (int ,int ,int) ;

__attribute__((used)) static void vce_v3_0_override_vce_clock_gating(struct amdgpu_device *adev, bool override)
{
 WREG32_FIELD(VCE_RB_ARB_CTRL, VCE_CGTT_OVERRIDE, override ? 1 : 0);
}
