
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int PMU_DRIVER_VERSION ;
 int PMU_PWR_AC_PRESENT ;
 int pmu_battery_count ;
 int pmu_power_flags ;
 int pmu_version ;
 int seq_printf (struct seq_file*,char*,int) ;

__attribute__((used)) static int pmu_info_proc_show(struct seq_file *m, void *v)
{
 seq_printf(m, "PMU driver version     : %d\n", PMU_DRIVER_VERSION);
 seq_printf(m, "PMU firmware version   : %02x\n", pmu_version);
 seq_printf(m, "AC Power               : %d\n",
  ((pmu_power_flags & PMU_PWR_AC_PRESENT) != 0) || pmu_battery_count == 0);
 seq_printf(m, "Battery count          : %d\n", pmu_battery_count);

 return 0;
}
