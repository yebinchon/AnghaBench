
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int LoadLineResistance; int Plx_I2C_LineSDA; int Plx_I2C_LineSCL; int Vr_I2C_LineSDA; int Vr_I2C_LineSCL; int Liquid_I2C_LineSDA; int Liquid_I2C_LineSCL; int Plx_I2C_address; int Vr_I2C_address; int Liquid2_I2C_address; int Liquid1_I2C_address; scalar_t__ FitLimit; void* TplxLimit; void* Tliquid2Limit; void* Tliquid1Limit; void* Tvr_memLimit; void* Tvr_socLimit; void* ThbmLimit; void* ThotspotLimit; void* TedgeLimit; void* EdcLimit; void* TdcLimit; void* SocketPowerLimit; } ;
struct TYPE_4__ {TYPE_3__ pp_table; } ;
struct vega10_hwmgr {TYPE_1__ smc_state_table; } ;
struct TYPE_5__ {int LoadLineSlope; } ;
struct pp_hwmgr {TYPE_2__ platform_descriptor; scalar_t__ pptable; struct vega10_hwmgr* backend; } ;
struct phm_tdp_table {int ucPlx_I2C_LineSDA; int ucPlx_I2C_Line; int ucVr_I2C_LineSDA; int ucVr_I2C_Line; int ucLiquid_I2C_LineSDA; int ucLiquid_I2C_Line; int ucPlx_I2C_address; int ucVr_I2C_address; int ucLiquid2_I2C_address; int ucLiquid1_I2C_address; int usTemperatureLimitPlx; int usTemperatureLimitLiquid2; int usTemperatureLimitLiquid1; int usTemperatureLimitVrMvdd; int usTemperatureLimitVrVddc; int usTemperatureLimitHBM; int usTemperatureLimitHotspot; int usTemperatureLimitTedge; int usEDCLimit; int usTDC; int usMaximumPowerDeliveryLimit; } ;
struct phm_ppt_v2_information {struct phm_tdp_table* tdp_table; } ;
typedef TYPE_3__ PPTable_t ;


 void* cpu_to_le16 (int ) ;

void vega10_initialize_power_tune_defaults(struct pp_hwmgr *hwmgr)
{
 struct vega10_hwmgr *data = hwmgr->backend;
 struct phm_ppt_v2_information *table_info =
   (struct phm_ppt_v2_information *)(hwmgr->pptable);
 struct phm_tdp_table *tdp_table = table_info->tdp_table;
 PPTable_t *table = &(data->smc_state_table.pp_table);

 table->SocketPowerLimit = cpu_to_le16(
   tdp_table->usMaximumPowerDeliveryLimit);
 table->TdcLimit = cpu_to_le16(tdp_table->usTDC);
 table->EdcLimit = cpu_to_le16(tdp_table->usEDCLimit);
 table->TedgeLimit = cpu_to_le16(tdp_table->usTemperatureLimitTedge);
 table->ThotspotLimit = cpu_to_le16(tdp_table->usTemperatureLimitHotspot);
 table->ThbmLimit = cpu_to_le16(tdp_table->usTemperatureLimitHBM);
 table->Tvr_socLimit = cpu_to_le16(tdp_table->usTemperatureLimitVrVddc);
 table->Tvr_memLimit = cpu_to_le16(tdp_table->usTemperatureLimitVrMvdd);
 table->Tliquid1Limit = cpu_to_le16(tdp_table->usTemperatureLimitLiquid1);
 table->Tliquid2Limit = cpu_to_le16(tdp_table->usTemperatureLimitLiquid2);
 table->TplxLimit = cpu_to_le16(tdp_table->usTemperatureLimitPlx);
 table->LoadLineResistance =
   hwmgr->platform_descriptor.LoadLineSlope * 256;
 table->FitLimit = 0;

 table->Liquid1_I2C_address = tdp_table->ucLiquid1_I2C_address;
 table->Liquid2_I2C_address = tdp_table->ucLiquid2_I2C_address;
 table->Vr_I2C_address = tdp_table->ucVr_I2C_address;
 table->Plx_I2C_address = tdp_table->ucPlx_I2C_address;

 table->Liquid_I2C_LineSCL = tdp_table->ucLiquid_I2C_Line;
 table->Liquid_I2C_LineSDA = tdp_table->ucLiquid_I2C_LineSDA;

 table->Vr_I2C_LineSCL = tdp_table->ucVr_I2C_Line;
 table->Vr_I2C_LineSDA = tdp_table->ucVr_I2C_LineSDA;

 table->Plx_I2C_LineSCL = tdp_table->ucPlx_I2C_Line;
 table->Plx_I2C_LineSDA = tdp_table->ucPlx_I2C_LineSDA;
}
