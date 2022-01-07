
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_device {int dummy; } ;
struct evergreen_power_info {int mvdd_high_index; } ;
struct TYPE_3__ {int value; int index; } ;
typedef TYPE_1__ RV770_SMC_VOLTAGE_VALUE ;


 int MVDD_HIGH_VALUE ;
 int cpu_to_be16 (int ) ;
 struct evergreen_power_info* evergreen_get_pi (struct radeon_device*) ;

__attribute__((used)) static int cypress_populate_initial_mvdd_value(struct radeon_device *rdev,
            RV770_SMC_VOLTAGE_VALUE *voltage)
{
 struct evergreen_power_info *eg_pi = evergreen_get_pi(rdev);

 voltage->index = eg_pi->mvdd_high_index;
 voltage->value = cpu_to_be16(MVDD_HIGH_VALUE);

 return 0;
}
