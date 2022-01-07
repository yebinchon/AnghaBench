
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct pp_hwmgr {int adev; } ;
struct pp_atomfwctrl_gpio_parameters {int ucFwCtfPolarity; int ucFwCtfGpio; int ucVR1HotPolarity; int ucVR1HotGpio; int ucVR0HotPolarity; int ucVR0HotGpio; int ucAcDcPolarity; int ucAcDcGpio; } ;
struct atom_smu_info_v3_1 {int fw_ctf_polarity; int fw_ctf_gpio_bit; int vr1hot_polarity; int vr1hot_gpio_bit; int vr0hot_polarity; int vr0hot_gpio_bit; int ac_dc_polarity; int ac_dc_gpio_bit; } ;


 int GetIndexIntoMasterDataTable (int ) ;
 int pr_info (char*) ;
 scalar_t__ smu_atom_get_data_table (int ,int ,int *,int *,int *) ;
 int smu_info ;

int pp_atomfwctrl_get_gpio_information(struct pp_hwmgr *hwmgr,
  struct pp_atomfwctrl_gpio_parameters *param)
{
 struct atom_smu_info_v3_1 *info;
 uint16_t idx;

 idx = GetIndexIntoMasterDataTable(smu_info);
 info = (struct atom_smu_info_v3_1 *)
  smu_atom_get_data_table(hwmgr->adev,
    idx, ((void*)0), ((void*)0), ((void*)0));

 if (!info) {
  pr_info("Error retrieving BIOS smu_info Table Address!");
  return -1;
 }

 param->ucAcDcGpio = info->ac_dc_gpio_bit;
 param->ucAcDcPolarity = info->ac_dc_polarity;
 param->ucVR0HotGpio = info->vr0hot_gpio_bit;
 param->ucVR0HotPolarity = info->vr0hot_polarity;
 param->ucVR1HotGpio = info->vr1hot_gpio_bit;
 param->ucVR1HotPolarity = info->vr1hot_polarity;
 param->ucFwCtfGpio = info->fw_ctf_gpio_bit;
 param->ucFwCtfPolarity = info->fw_ctf_polarity;

 return 0;
}
