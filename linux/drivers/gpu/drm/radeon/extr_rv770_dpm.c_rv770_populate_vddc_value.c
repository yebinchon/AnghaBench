
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct rv7xx_power_info {int valid_vddc_entries; TYPE_1__* vddc_table; int voltage_control; } ;
struct radeon_device {int dummy; } ;
struct TYPE_5__ {scalar_t__ value; int index; } ;
struct TYPE_4__ {scalar_t__ vddc; int vddc_index; } ;
typedef TYPE_2__ RV770_SMC_VOLTAGE_VALUE ;


 int EINVAL ;
 scalar_t__ cpu_to_be16 (scalar_t__) ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;

int rv770_populate_vddc_value(struct radeon_device *rdev, u16 vddc,
         RV770_SMC_VOLTAGE_VALUE *voltage)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);
 int i;

 if (!pi->voltage_control) {
  voltage->index = 0;
  voltage->value = 0;
  return 0;
 }

 for (i = 0; i < pi->valid_vddc_entries; i++) {
  if (vddc <= pi->vddc_table[i].vddc) {
   voltage->index = pi->vddc_table[i].vddc_index;
   voltage->value = cpu_to_be16(vddc);
   break;
  }
 }

 if (i == pi->valid_vddc_entries)
  return -EINVAL;

 return 0;
}
