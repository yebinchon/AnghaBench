
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trinity_power_info {int min_sclk_did; } ;
struct radeon_device {int dummy; } ;


 int CC_SMU_MISC_FUSES ;
 int MinSClkDid_MASK ;
 int MinSClkDid_SHIFT ;
 int RREG32_SMC (int ) ;
 struct trinity_power_info* trinity_get_pi (struct radeon_device*) ;

__attribute__((used)) static void trinity_get_min_sclk_divider(struct radeon_device *rdev)
{
 struct trinity_power_info *pi = trinity_get_pi(rdev);

 pi->min_sclk_did =
  (RREG32_SMC(CC_SMU_MISC_FUSES) & MinSClkDid_MASK) >> MinSClkDid_SHIFT;
}
