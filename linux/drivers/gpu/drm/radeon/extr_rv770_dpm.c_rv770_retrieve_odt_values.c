
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rv7xx_power_info {scalar_t__ mclk_odt_threshold; } ;
struct radeon_device {scalar_t__ family; } ;


 scalar_t__ CHIP_RV710 ;
 scalar_t__ CHIP_RV730 ;
 int rv730_get_odt_values (struct radeon_device*) ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;

__attribute__((used)) static void rv770_retrieve_odt_values(struct radeon_device *rdev)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);

 if (pi->mclk_odt_threshold == 0)
  return;

 if ((rdev->family == CHIP_RV730) || (rdev->family == CHIP_RV710))
  rv730_get_odt_values(rdev);
}
