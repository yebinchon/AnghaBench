
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vega10_hwmgr {int need_update_dpm_table; } ;
struct pp_hwmgr {struct vega10_hwmgr* backend; } ;


 int DPMTABLE_OD_UPDATE_VDDC ;
 int vega10_avfs_enable (struct pp_hwmgr*,int) ;

__attribute__((used)) static int vega10_update_avfs(struct pp_hwmgr *hwmgr)
{
 struct vega10_hwmgr *data = hwmgr->backend;

 if (data->need_update_dpm_table & DPMTABLE_OD_UPDATE_VDDC) {
  vega10_avfs_enable(hwmgr, 0);
 } else if (data->need_update_dpm_table) {
  vega10_avfs_enable(hwmgr, 0);
  vega10_avfs_enable(hwmgr, 1);
 } else {
  vega10_avfs_enable(hwmgr, 1);
 }

 return 0;
}
