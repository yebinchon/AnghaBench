
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct rv7xx_power_info {scalar_t__ mvdd_split_frequency; int mvdd_control; } ;
struct radeon_device {int dummy; } ;
struct evergreen_power_info {int mvdd_high_index; int mvdd_low_index; } ;
struct TYPE_3__ {void* value; int index; } ;
typedef TYPE_1__ NISLANDS_SMC_VOLTAGE_VALUE ;


 int MVDD_HIGH_VALUE ;
 int MVDD_LOW_VALUE ;
 void* cpu_to_be16 (int ) ;
 struct evergreen_power_info* evergreen_get_pi (struct radeon_device*) ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;

__attribute__((used)) static void ni_populate_mvdd_value(struct radeon_device *rdev,
       u32 mclk,
       NISLANDS_SMC_VOLTAGE_VALUE *voltage)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);
 struct evergreen_power_info *eg_pi = evergreen_get_pi(rdev);

 if (!pi->mvdd_control) {
  voltage->index = eg_pi->mvdd_high_index;
  voltage->value = cpu_to_be16(MVDD_HIGH_VALUE);
  return;
 }

 if (mclk <= pi->mvdd_split_frequency) {
  voltage->index = eg_pi->mvdd_low_index;
  voltage->value = cpu_to_be16(MVDD_LOW_VALUE);
 } else {
  voltage->index = eg_pi->mvdd_high_index;
  voltage->value = cpu_to_be16(MVDD_HIGH_VALUE);
 }
}
