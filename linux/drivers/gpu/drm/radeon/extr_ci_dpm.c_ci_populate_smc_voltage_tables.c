
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
typedef int SMU7_Discrete_DpmTable ;


 int ci_populate_smc_mvdd_table (struct radeon_device*,int *) ;
 int ci_populate_smc_vddc_table (struct radeon_device*,int *) ;
 int ci_populate_smc_vddci_table (struct radeon_device*,int *) ;

__attribute__((used)) static int ci_populate_smc_voltage_tables(struct radeon_device *rdev,
       SMU7_Discrete_DpmTable *table)
{
 int ret;

 ret = ci_populate_smc_vddc_table(rdev, table);
 if (ret)
  return ret;

 ret = ci_populate_smc_vddci_table(rdev, table);
 if (ret)
  return ret;

 ret = ci_populate_smc_mvdd_table(rdev, table);
 if (ret)
  return ret;

 return 0;
}
