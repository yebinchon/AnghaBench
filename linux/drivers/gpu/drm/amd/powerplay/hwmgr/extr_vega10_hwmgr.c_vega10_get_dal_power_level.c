
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {scalar_t__ pptable; } ;
struct phm_clock_and_voltage_limits {int mclk; int sclk; } ;
struct phm_ppt_v2_information {struct phm_clock_and_voltage_limits max_clock_voltage_on_ac; } ;
struct amd_pp_simple_clock_info {int memory_max_clock; int engine_max_clock; } ;



__attribute__((used)) static int vega10_get_dal_power_level(struct pp_hwmgr *hwmgr,
  struct amd_pp_simple_clock_info *info)
{
 struct phm_ppt_v2_information *table_info =
   (struct phm_ppt_v2_information *)hwmgr->pptable;
 struct phm_clock_and_voltage_limits *max_limits =
   &table_info->max_clock_voltage_on_ac;

 info->engine_max_clock = max_limits->sclk;
 info->memory_max_clock = max_limits->mclk;

 return 0;
}
