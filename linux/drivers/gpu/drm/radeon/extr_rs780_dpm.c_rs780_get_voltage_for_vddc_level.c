
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;
struct igp_power_info {int max_voltage; int min_voltage; } ;
typedef enum rs780_vddc_level { ____Placeholder_rs780_vddc_level } rs780_vddc_level ;


 int RS780_VDDC_LEVEL_HIGH ;
 int RS780_VDDC_LEVEL_LOW ;
 struct igp_power_info* rs780_get_pi (struct radeon_device*) ;

__attribute__((used)) static u32 rs780_get_voltage_for_vddc_level(struct radeon_device *rdev,
         enum rs780_vddc_level vddc)
{
 struct igp_power_info *pi = rs780_get_pi(rdev);

 if (vddc == RS780_VDDC_LEVEL_HIGH)
  return pi->max_voltage;
 else if (vddc == RS780_VDDC_LEVEL_LOW)
  return pi->min_voltage;
 else
  return pi->max_voltage;
}
