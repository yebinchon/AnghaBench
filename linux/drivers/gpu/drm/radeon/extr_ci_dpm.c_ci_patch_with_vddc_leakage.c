
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef int u16 ;
struct radeon_device {int dummy; } ;
struct ci_leakage_voltage {size_t count; int * actual_voltage; int * leakage_id; } ;
struct ci_power_info {struct ci_leakage_voltage vddc_leakage; } ;


 struct ci_power_info* ci_get_pi (struct radeon_device*) ;

__attribute__((used)) static void ci_patch_with_vddc_leakage(struct radeon_device *rdev, u16 *vddc)
{
 struct ci_power_info *pi = ci_get_pi(rdev);
 struct ci_leakage_voltage *leakage_table = &pi->vddc_leakage;
 u32 leakage_index;

 for (leakage_index = 0; leakage_index < leakage_table->count; leakage_index++) {
  if (leakage_table->leakage_id[leakage_index] == *vddc) {
   *vddc = leakage_table->actual_voltage[leakage_index];
   break;
  }
 }
}
