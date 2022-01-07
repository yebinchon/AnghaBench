
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct pp_hwmgr {int adev; } ;
struct pp_atomfwctrl_smc_dpm_parameters {int Vr2_I2C_address; int acggfxclkspreadfreq; int acggfxclkspreadpercent; int acggfxclkspreadenabled; int socclkspreadfreq; int socclkspreadpercent; int socclkspreadenabled; int uclkspreadfreq; int uclkspreadpercent; int uclkspreadenabled; int pllgfxclkspreadfreq; int pllgfxclkspreadpercent; int pllgfxclkspreadenabled; int ledpin2; int ledpin1; int ledpin0; int padding2; int padding1; int vr1hotpolarity; int vr1hotgpio; int vr0hotpolarity; int vr0hotgpio; int acdcpolarity; int acdcgpio; int padding_telemetrymem1; int mem1offset; int mem1maxcurrent; int padding_telemetrymem0; int mem0offset; int mem0maxcurrent; int padding_telemetrysoc; int socoffset; int socmaxcurrent; int padding_telemetrygfx; int gfxoffset; int gfxmaxcurrent; int soculvphasesheddingmask; int gfxulvphasesheddingmask; int vddmem1vrmapping; int vddmem0vrmapping; int vddsocvrmapping; int vddgfxvrmapping; int maxvoltagestepsoc; int maxvoltagestepgfx; int liquidsensorpresent; int vrsensorpresent; int plx_i2c_linesda; int plx_i2c_linescl; int vr_i2c_linesda; int vr_i2c_linescl; int liquid_i2c_linesda; int liquid_i2c_linescl; int plx_i2c_address; int vr_i2c_address; int liquid2_i2c_address; int liquid1_i2c_address; } ;
struct atom_smc_dpm_info_v4_1 {int Vr2_I2C_address; int acggfxclkspreadfreq; int acggfxclkspreadpercent; int acggfxclkspreadenabled; int socclkspreadfreq; int socclkspreadpercent; int socclkspreadenabled; int uclkspreadfreq; int uclkspreadpercent; int uclkspreadenabled; int pllgfxclkspreadfreq; int pllgfxclkspreadpercent; int pllgfxclkspreadenabled; int ledpin2; int ledpin1; int ledpin0; int padding2; int padding1; int vr1hotpolarity; int vr1hotgpio; int vr0hotpolarity; int vr0hotgpio; int acdcpolarity; int acdcgpio; int padding_telemetrymem1; int mem1offset; int mem1maxcurrent; int padding_telemetrymem0; int mem0offset; int mem0maxcurrent; int padding_telemetrysoc; int socoffset; int socmaxcurrent; int padding_telemetrygfx; int gfxoffset; int gfxmaxcurrent; int soculvphasesheddingmask; int gfxulvphasesheddingmask; int vddmem1vrmapping; int vddmem0vrmapping; int vddsocvrmapping; int vddgfxvrmapping; int maxvoltagestepsoc; int maxvoltagestepgfx; int liquidsensorpresent; int vrsensorpresent; int plx_i2c_linesda; int plx_i2c_linescl; int vr_i2c_linesda; int vr_i2c_linescl; int liquid_i2c_linesda; int liquid_i2c_linescl; int plx_i2c_address; int vr_i2c_address; int liquid2_i2c_address; int liquid1_i2c_address; } ;


 int EINVAL ;
 int GetIndexIntoMasterDataTable (int ) ;
 int pr_info (char*) ;
 int smc_dpm_info ;
 scalar_t__ smu_atom_get_data_table (int ,int ,int *,int *,int *) ;

int pp_atomfwctrl_get_smc_dpm_information(struct pp_hwmgr *hwmgr,
  struct pp_atomfwctrl_smc_dpm_parameters *param)
{
 struct atom_smc_dpm_info_v4_1 *info;
 uint16_t ix;

 ix = GetIndexIntoMasterDataTable(smc_dpm_info);
 info = (struct atom_smc_dpm_info_v4_1 *)
  smu_atom_get_data_table(hwmgr->adev,
    ix, ((void*)0), ((void*)0), ((void*)0));
 if (!info) {
  pr_info("Error retrieving BIOS Table Address!");
  return -EINVAL;
 }

 param->liquid1_i2c_address = info->liquid1_i2c_address;
 param->liquid2_i2c_address = info->liquid2_i2c_address;
 param->vr_i2c_address = info->vr_i2c_address;
 param->plx_i2c_address = info->plx_i2c_address;

 param->liquid_i2c_linescl = info->liquid_i2c_linescl;
 param->liquid_i2c_linesda = info->liquid_i2c_linesda;
 param->vr_i2c_linescl = info->vr_i2c_linescl;
 param->vr_i2c_linesda = info->vr_i2c_linesda;

 param->plx_i2c_linescl = info->plx_i2c_linescl;
 param->plx_i2c_linesda = info->plx_i2c_linesda;
 param->vrsensorpresent = info->vrsensorpresent;
 param->liquidsensorpresent = info->liquidsensorpresent;

 param->maxvoltagestepgfx = info->maxvoltagestepgfx;
 param->maxvoltagestepsoc = info->maxvoltagestepsoc;

 param->vddgfxvrmapping = info->vddgfxvrmapping;
 param->vddsocvrmapping = info->vddsocvrmapping;
 param->vddmem0vrmapping = info->vddmem0vrmapping;
 param->vddmem1vrmapping = info->vddmem1vrmapping;

 param->gfxulvphasesheddingmask = info->gfxulvphasesheddingmask;
 param->soculvphasesheddingmask = info->soculvphasesheddingmask;

 param->gfxmaxcurrent = info->gfxmaxcurrent;
 param->gfxoffset = info->gfxoffset;
 param->padding_telemetrygfx = info->padding_telemetrygfx;

 param->socmaxcurrent = info->socmaxcurrent;
 param->socoffset = info->socoffset;
 param->padding_telemetrysoc = info->padding_telemetrysoc;

 param->mem0maxcurrent = info->mem0maxcurrent;
 param->mem0offset = info->mem0offset;
 param->padding_telemetrymem0 = info->padding_telemetrymem0;

 param->mem1maxcurrent = info->mem1maxcurrent;
 param->mem1offset = info->mem1offset;
 param->padding_telemetrymem1 = info->padding_telemetrymem1;

 param->acdcgpio = info->acdcgpio;
 param->acdcpolarity = info->acdcpolarity;
 param->vr0hotgpio = info->vr0hotgpio;
 param->vr0hotpolarity = info->vr0hotpolarity;

 param->vr1hotgpio = info->vr1hotgpio;
 param->vr1hotpolarity = info->vr1hotpolarity;
 param->padding1 = info->padding1;
 param->padding2 = info->padding2;

 param->ledpin0 = info->ledpin0;
 param->ledpin1 = info->ledpin1;
 param->ledpin2 = info->ledpin2;

 param->pllgfxclkspreadenabled = info->pllgfxclkspreadenabled;
 param->pllgfxclkspreadpercent = info->pllgfxclkspreadpercent;
 param->pllgfxclkspreadfreq = info->pllgfxclkspreadfreq;

 param->uclkspreadenabled = info->uclkspreadenabled;
 param->uclkspreadpercent = info->uclkspreadpercent;
 param->uclkspreadfreq = info->uclkspreadfreq;

 param->socclkspreadenabled = info->socclkspreadenabled;
 param->socclkspreadpercent = info->socclkspreadpercent;
 param->socclkspreadfreq = info->socclkspreadfreq;

 param->acggfxclkspreadenabled = info->acggfxclkspreadenabled;
 param->acggfxclkspreadpercent = info->acggfxclkspreadpercent;
 param->acggfxclkspreadfreq = info->acggfxclkspreadfreq;

 param->Vr2_I2C_address = info->Vr2_I2C_address;

 return 0;
}
