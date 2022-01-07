
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu7_hwmgr {int need_update_smu7_dpm_table; } ;
struct pp_hwmgr {int avfs_supported; scalar_t__ backend; } ;


 int DPMTABLE_OD_UPDATE_SCLK ;
 int DPMTABLE_OD_UPDATE_VDDC ;
 int smu7_avfs_control (struct pp_hwmgr*,int) ;

__attribute__((used)) static int smu7_update_avfs(struct pp_hwmgr *hwmgr)
{
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);

 if (!hwmgr->avfs_supported)
  return 0;

 if (data->need_update_smu7_dpm_table & DPMTABLE_OD_UPDATE_VDDC) {
  smu7_avfs_control(hwmgr, 0);
 } else if (data->need_update_smu7_dpm_table & DPMTABLE_OD_UPDATE_SCLK) {
  smu7_avfs_control(hwmgr, 0);
  smu7_avfs_control(hwmgr, 1);
 } else {
  smu7_avfs_control(hwmgr, 1);
 }

 return 0;
}
