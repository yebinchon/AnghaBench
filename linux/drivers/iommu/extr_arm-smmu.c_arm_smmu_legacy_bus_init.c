
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arm_smmu_bus_init () ;
 scalar_t__ using_legacy_binding ;

__attribute__((used)) static int arm_smmu_legacy_bus_init(void)
{
 if (using_legacy_binding)
  arm_smmu_bus_init();
 return 0;
}
