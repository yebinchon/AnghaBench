
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_power_info {int mvdd_bootup_value; int mvdd_voltage_table; } ;
struct rv7xx_power_info {scalar_t__ mvdd_control; } ;
struct radeon_device {int dummy; } ;
struct SISLANDS_SMC_VOLTAGE_VALUE {int dummy; } ;


 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;
 struct si_power_info* si_get_pi (struct radeon_device*) ;
 int si_populate_voltage_value (struct radeon_device*,int *,int ,struct SISLANDS_SMC_VOLTAGE_VALUE*) ;

__attribute__((used)) static int si_populate_initial_mvdd_value(struct radeon_device *rdev,
       struct SISLANDS_SMC_VOLTAGE_VALUE *voltage)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);
 struct si_power_info *si_pi = si_get_pi(rdev);

 if (pi->mvdd_control)
  return si_populate_voltage_value(rdev, &si_pi->mvdd_voltage_table,
       si_pi->mvdd_bootup_value, voltage);

 return 0;
}
