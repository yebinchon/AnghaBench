
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int WREG32 (int ,int) ;
 int mmVCE_CGTT_CLK_OVERRIDE ;

__attribute__((used)) static void vce_v2_0_disable_cg(struct amdgpu_device *adev)
{
 WREG32(mmVCE_CGTT_CLK_OVERRIDE, 7);
}
