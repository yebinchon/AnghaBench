
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint16_t ;
struct smu7_hwmgr {int vddc_leakage; } ;
struct pp_hwmgr {scalar_t__ backend; } ;
struct phm_samu_clock_voltage_dependency_table {size_t count; TYPE_1__* entries; } ;
struct TYPE_2__ {int v; } ;


 int smu7_patch_ppt_v0_with_vdd_leakage (struct pp_hwmgr*,int *,int *) ;

__attribute__((used)) static int smu7_patch_samu_vddc(struct pp_hwmgr *hwmgr,
       struct phm_samu_clock_voltage_dependency_table *tab)
{
 uint16_t i;
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);

 if (tab)
  for (i = 0; i < tab->count; i++)
   smu7_patch_ppt_v0_with_vdd_leakage(hwmgr, &tab->entries[i].v,
       &data->vddc_leakage);

 return 0;
}
