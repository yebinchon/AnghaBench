
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;
typedef enum r600_power_level { ____Placeholder_r600_power_level } r600_power_level ;


 int CURRENT_PROFILE_INDEX_MASK ;
 int CURRENT_PROFILE_INDEX_SHIFT ;
 int RREG32 (int ) ;
 int TARGET_AND_CURRENT_PROFILE_INDEX ;

enum r600_power_level r600_power_level_get_current_index(struct radeon_device *rdev)
{
 u32 tmp;

 tmp = RREG32(TARGET_AND_CURRENT_PROFILE_INDEX) & CURRENT_PROFILE_INDEX_MASK;
 tmp >>= CURRENT_PROFILE_INDEX_SHIFT;
 return tmp;
}
