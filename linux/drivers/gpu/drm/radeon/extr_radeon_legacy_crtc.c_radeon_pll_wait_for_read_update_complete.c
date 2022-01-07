
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 int RADEON_PPLL_ATOMIC_UPDATE_R ;
 int RADEON_PPLL_REF_DIV ;
 int RREG32_PLL (int ) ;

__attribute__((used)) static void radeon_pll_wait_for_read_update_complete(struct drm_device *dev)
{
 struct radeon_device *rdev = dev->dev_private;
 int i = 0;





 for (i = 0;
      (i < 10000 &&
       RREG32_PLL(RADEON_PPLL_REF_DIV) & RADEON_PPLL_ATOMIC_UPDATE_R);
      i++);
}
