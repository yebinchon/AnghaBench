
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int R600_POWER_LEVEL_HIGH ;
 int R600_POWER_LEVEL_LOW ;
 int R600_POWER_LEVEL_MEDIUM ;
 int rv6xx_enable_dynamic_spread_spectrum (struct radeon_device*,int) ;
 int rv6xx_enable_engine_spread_spectrum (struct radeon_device*,int ,int) ;
 int rv6xx_enable_memory_spread_spectrum (struct radeon_device*,int) ;

__attribute__((used)) static void rv6xx_enable_spread_spectrum(struct radeon_device *rdev,
      bool enable)
{
 if (enable)
  rv6xx_enable_dynamic_spread_spectrum(rdev, 1);
 else {
  rv6xx_enable_engine_spread_spectrum(rdev, R600_POWER_LEVEL_LOW, 0);
  rv6xx_enable_engine_spread_spectrum(rdev, R600_POWER_LEVEL_MEDIUM, 0);
  rv6xx_enable_engine_spread_spectrum(rdev, R600_POWER_LEVEL_HIGH, 0);
  rv6xx_enable_dynamic_spread_spectrum(rdev, 0);
  rv6xx_enable_memory_spread_spectrum(rdev, 0);
 }
}
