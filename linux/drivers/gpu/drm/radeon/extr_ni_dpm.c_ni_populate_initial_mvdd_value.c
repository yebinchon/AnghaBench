
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
struct evergreen_power_info {int mvdd_high_index; } ;
struct NISLANDS_SMC_VOLTAGE_VALUE {int value; int index; } ;


 int MVDD_HIGH_VALUE ;
 int cpu_to_be16 (int ) ;
 struct evergreen_power_info* evergreen_get_pi (struct radeon_device*) ;

__attribute__((used)) static void ni_populate_initial_mvdd_value(struct radeon_device *rdev,
        struct NISLANDS_SMC_VOLTAGE_VALUE *voltage)
{
 struct evergreen_power_info *eg_pi = evergreen_get_pi(rdev);

 voltage->index = eg_pi->mvdd_high_index;
 voltage->value = cpu_to_be16(MVDD_HIGH_VALUE);
}
