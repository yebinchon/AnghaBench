
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct rv7xx_power_info {scalar_t__ mvdd_split_frequency; int mvdd_control; } ;
struct radeon_device {int dummy; } ;
struct TYPE_3__ {void* value; void* index; } ;
typedef TYPE_1__ RV770_SMC_VOLTAGE_VALUE ;


 void* MVDD_HIGH_INDEX ;
 int MVDD_HIGH_VALUE ;
 void* MVDD_LOW_INDEX ;
 int MVDD_LOW_VALUE ;
 void* cpu_to_be16 (int ) ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;

int rv770_populate_mvdd_value(struct radeon_device *rdev, u32 mclk,
         RV770_SMC_VOLTAGE_VALUE *voltage)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);

 if (!pi->mvdd_control) {
  voltage->index = MVDD_HIGH_INDEX;
  voltage->value = cpu_to_be16(MVDD_HIGH_VALUE);
  return 0;
 }

 if (mclk <= pi->mvdd_split_frequency) {
  voltage->index = MVDD_LOW_INDEX;
  voltage->value = cpu_to_be16(MVDD_LOW_VALUE);
 } else {
  voltage->index = MVDD_HIGH_INDEX;
  voltage->value = cpu_to_be16(MVDD_HIGH_VALUE);
 }

 return 0;
}
