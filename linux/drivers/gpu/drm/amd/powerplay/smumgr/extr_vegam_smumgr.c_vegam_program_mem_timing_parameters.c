
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu7_hwmgr {int need_update_smu7_dpm_table; } ;
struct pp_hwmgr {scalar_t__ backend; } ;


 int DPMTABLE_OD_UPDATE_SCLK ;
 int DPMTABLE_UPDATE_MCLK ;
 int DPMTABLE_UPDATE_SCLK ;
 int vegam_program_memory_timing_parameters (struct pp_hwmgr*) ;

__attribute__((used)) static int vegam_program_mem_timing_parameters(struct pp_hwmgr *hwmgr)
{
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);

 if (data->need_update_smu7_dpm_table &
  (DPMTABLE_OD_UPDATE_SCLK +
  DPMTABLE_UPDATE_SCLK +
  DPMTABLE_UPDATE_MCLK))
  return vegam_program_memory_timing_parameters(hwmgr);

 return 0;
}
