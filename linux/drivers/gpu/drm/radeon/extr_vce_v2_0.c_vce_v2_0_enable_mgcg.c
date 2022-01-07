
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int cg_flags; } ;


 int RADEON_CG_SUPPORT_VCE_MGCG ;
 int vce_v2_0_disable_cg (struct radeon_device*) ;
 int vce_v2_0_set_dyn_cg (struct radeon_device*,int) ;
 int vce_v2_0_set_sw_cg (struct radeon_device*,int) ;

void vce_v2_0_enable_mgcg(struct radeon_device *rdev, bool enable)
{
 bool sw_cg = 0;

 if (enable && (rdev->cg_flags & RADEON_CG_SUPPORT_VCE_MGCG)) {
  if (sw_cg)
   vce_v2_0_set_sw_cg(rdev, 1);
  else
   vce_v2_0_set_dyn_cg(rdev, 1);
 } else {
  vce_v2_0_disable_cg(rdev);

  if (sw_cg)
   vce_v2_0_set_sw_cg(rdev, 0);
  else
   vce_v2_0_set_dyn_cg(rdev, 0);
 }
}
