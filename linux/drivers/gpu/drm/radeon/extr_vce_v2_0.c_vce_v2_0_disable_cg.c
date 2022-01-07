
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int VCE_CGTT_CLK_OVERRIDE ;
 int WREG32 (int ,int) ;

__attribute__((used)) static void vce_v2_0_disable_cg(struct radeon_device *rdev)
{
 WREG32(VCE_CGTT_CLK_OVERRIDE, 7);
}
