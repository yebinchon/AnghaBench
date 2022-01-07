
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rv7xx_power_info {int s0_vid_lower_smio_cntl; int mvdd_mask_low; int* mvdd_low_smio; } ;
struct radeon_device {int dummy; } ;
struct TYPE_3__ {size_t index; void* value; } ;
typedef TYPE_1__ RV770_SMC_VOLTAGE_VALUE ;


 size_t MVDD_HIGH_INDEX ;
 int MVDD_HIGH_VALUE ;
 size_t MVDD_LOW_INDEX ;
 int MVDD_LOW_VALUE ;
 void* cpu_to_be16 (int ) ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;

int rv770_populate_initial_mvdd_value(struct radeon_device *rdev,
          RV770_SMC_VOLTAGE_VALUE *voltage)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);

 if ((pi->s0_vid_lower_smio_cntl & pi->mvdd_mask_low) ==
      (pi->mvdd_low_smio[MVDD_LOW_INDEX] & pi->mvdd_mask_low) ) {
  voltage->index = MVDD_LOW_INDEX;
  voltage->value = cpu_to_be16(MVDD_LOW_VALUE);
 } else {
  voltage->index = MVDD_HIGH_INDEX;
  voltage->value = cpu_to_be16(MVDD_HIGH_VALUE);
 }

 return 0;
}
