
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {scalar_t__ pptable; } ;
struct phm_clock_and_voltage_limits {int mclk; int sclk; } ;
struct phm_ppt_v2_information {struct phm_clock_and_voltage_limits max_clock_voltage_on_ac; } ;
struct amd_pp_simple_clock_info {int memory_max_clock; int engine_max_clock; } ;



__attribute__((used)) static int vega12_get_dal_power_level(struct pp_hwmgr *hwmgr,
  struct amd_pp_simple_clock_info *info)
{
 return 0;
}
