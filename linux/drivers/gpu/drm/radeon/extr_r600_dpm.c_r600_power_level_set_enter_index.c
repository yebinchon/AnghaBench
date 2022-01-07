
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
typedef enum r600_power_level { ____Placeholder_r600_power_level } r600_power_level ;


 int DYN_PWR_ENTER_INDEX (int) ;
 int DYN_PWR_ENTER_INDEX_MASK ;
 int TARGET_AND_CURRENT_PROFILE_INDEX ;
 int WREG32_P (int ,int ,int ) ;

void r600_power_level_set_enter_index(struct radeon_device *rdev,
          enum r600_power_level index)
{
 WREG32_P(TARGET_AND_CURRENT_PROFILE_INDEX, DYN_PWR_ENTER_INDEX(index),
   ~DYN_PWR_ENTER_INDEX_MASK);
}
