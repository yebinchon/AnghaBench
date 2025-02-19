
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef scalar_t__ uint16_t ;
struct smu7_hwmgr {int vddc_leakage; } ;
struct pp_hwmgr {scalar_t__ backend; } ;
struct phm_cac_leakage_table {size_t count; TYPE_1__* entries; } ;
struct TYPE_2__ {scalar_t__ Vddc; } ;


 int smu7_patch_ppt_v0_with_vdd_leakage (struct pp_hwmgr*,size_t*,int *) ;

__attribute__((used)) static int smu7_patch_cac_vddc(struct pp_hwmgr *hwmgr, struct phm_cac_leakage_table *tab)
{
 uint32_t i;
 uint32_t vddc;
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);

 if (tab) {
  for (i = 0; i < tab->count; i++) {
   vddc = (uint32_t)(tab->entries[i].Vddc);
   smu7_patch_ppt_v0_with_vdd_leakage(hwmgr, &vddc, &data->vddc_leakage);
   tab->entries[i].Vddc = (uint16_t)vddc;
  }
 }

 return 0;
}
