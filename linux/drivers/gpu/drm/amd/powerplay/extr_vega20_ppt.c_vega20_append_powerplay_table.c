
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct smu_table_context {TYPE_3__* driver_pptable; } ;
struct smu_context {struct smu_table_context smu_table; } ;
struct atom_smc_dpm_info_v4_4 {TYPE_2__* i2ccontrollers; int fllgfxclkspreadfreq; int fllgfxclkspreadpercent; int fllgfxclkspreadenabled; int fclkspreadfreq; int fclkspreadpercent; int fclkspreadenabled; int uclkspreadfreq; int uclkspreadpercent; int pllgfxclkspreadfreq; int pllgfxclkspreadpercent; int pllgfxclkspreadenabled; int ledpin2; int ledpin1; int ledpin0; int padding2; int padding1; int vr1hotpolarity; int vr1hotgpio; int vr0hotpolarity; int vr0hotgpio; int acdcpolarity; int acdcgpio; int padding_telemetrymem1; int mem1offset; int mem1maxcurrent; int padding_telemetrymem0; int mem0offset; int mem0maxcurrent; int padding_telemetrysoc; int socoffset; int socmaxcurrent; int padding_telemetrygfx; int gfxoffset; int gfxmaxcurrent; int externalsensorpresent; int soculvphasesheddingmask; int gfxulvphasesheddingmask; int vddmem1vrmapping; int vddmem0vrmapping; int vddsocvrmapping; int vddgfxvrmapping; int maxvoltagestepsoc; int maxvoltagestepgfx; } ;
struct TYPE_6__ {TYPE_1__* I2cControllers; int FllGfxclkSpreadFreq; int FllGfxclkSpreadPercent; int FllGfxclkSpreadEnabled; int FclkSpreadFreq; int FclkSpreadPercent; int FclkSpreadEnabled; int UclkSpreadFreq; int UclkSpreadPercent; scalar_t__ UclkSpreadEnabled; int PllGfxclkSpreadFreq; int PllGfxclkSpreadPercent; int PllGfxclkSpreadEnabled; int LedPin2; int LedPin1; int LedPin0; int Padding2; int Padding1; int VR1HotPolarity; int VR1HotGpio; int VR0HotPolarity; int VR0HotGpio; int AcDcPolarity; int AcDcGpio; int Padding_TelemetryMem1; int Mem1Offset; int Mem1MaxCurrent; int Padding_TelemetryMem0; int Mem0Offset; int Mem0MaxCurrent; int Padding_TelemetrySoc; int SocOffset; int SocMaxCurrent; int Padding_TelemetryGfx; int GfxOffset; int GfxMaxCurrent; int ExternalSensorPresent; int SocUlvPhaseSheddingMask; int GfxUlvPhaseSheddingMask; int VddMem1VrMapping; int VddMem0VrMapping; int VddSocVrMapping; int VddGfxVrMapping; int MaxVoltageStepSoc; int MaxVoltageStepGfx; } ;
struct TYPE_5__ {int i2cspeed; int i2cprotocol; int thermalthrottler; int controllerport; int slaveaddress; int enabled; } ;
struct TYPE_4__ {int I2cSpeed; int I2cProtocol; int ThermalThrottler; int ControllerPort; int SlaveAddress; int Enabled; } ;
typedef TYPE_3__ PPTable_t ;


 int I2C_CONTROLLER_NAME_COUNT ;
 int atom_master_list_of_data_tables_v2_1 ;
 int get_index_into_master_table (int ,int ) ;
 int smc_dpm_info ;
 int smu_get_atom_data_table (struct smu_context*,int,int *,int *,int *,int **) ;

__attribute__((used)) static int vega20_append_powerplay_table(struct smu_context *smu)
{
 struct smu_table_context *table_context = &smu->smu_table;
 PPTable_t *smc_pptable = table_context->driver_pptable;
 struct atom_smc_dpm_info_v4_4 *smc_dpm_table;
 int index, i, ret;

 index = get_index_into_master_table(atom_master_list_of_data_tables_v2_1,
        smc_dpm_info);

 ret = smu_get_atom_data_table(smu, index, ((void*)0), ((void*)0), ((void*)0),
          (uint8_t **)&smc_dpm_table);
 if (ret)
  return ret;

 smc_pptable->MaxVoltageStepGfx = smc_dpm_table->maxvoltagestepgfx;
 smc_pptable->MaxVoltageStepSoc = smc_dpm_table->maxvoltagestepsoc;

 smc_pptable->VddGfxVrMapping = smc_dpm_table->vddgfxvrmapping;
 smc_pptable->VddSocVrMapping = smc_dpm_table->vddsocvrmapping;
 smc_pptable->VddMem0VrMapping = smc_dpm_table->vddmem0vrmapping;
 smc_pptable->VddMem1VrMapping = smc_dpm_table->vddmem1vrmapping;

 smc_pptable->GfxUlvPhaseSheddingMask = smc_dpm_table->gfxulvphasesheddingmask;
 smc_pptable->SocUlvPhaseSheddingMask = smc_dpm_table->soculvphasesheddingmask;
 smc_pptable->ExternalSensorPresent = smc_dpm_table->externalsensorpresent;

 smc_pptable->GfxMaxCurrent = smc_dpm_table->gfxmaxcurrent;
 smc_pptable->GfxOffset = smc_dpm_table->gfxoffset;
 smc_pptable->Padding_TelemetryGfx = smc_dpm_table->padding_telemetrygfx;

 smc_pptable->SocMaxCurrent = smc_dpm_table->socmaxcurrent;
 smc_pptable->SocOffset = smc_dpm_table->socoffset;
 smc_pptable->Padding_TelemetrySoc = smc_dpm_table->padding_telemetrysoc;

 smc_pptable->Mem0MaxCurrent = smc_dpm_table->mem0maxcurrent;
 smc_pptable->Mem0Offset = smc_dpm_table->mem0offset;
 smc_pptable->Padding_TelemetryMem0 = smc_dpm_table->padding_telemetrymem0;

 smc_pptable->Mem1MaxCurrent = smc_dpm_table->mem1maxcurrent;
 smc_pptable->Mem1Offset = smc_dpm_table->mem1offset;
 smc_pptable->Padding_TelemetryMem1 = smc_dpm_table->padding_telemetrymem1;

 smc_pptable->AcDcGpio = smc_dpm_table->acdcgpio;
 smc_pptable->AcDcPolarity = smc_dpm_table->acdcpolarity;
 smc_pptable->VR0HotGpio = smc_dpm_table->vr0hotgpio;
 smc_pptable->VR0HotPolarity = smc_dpm_table->vr0hotpolarity;

 smc_pptable->VR1HotGpio = smc_dpm_table->vr1hotgpio;
 smc_pptable->VR1HotPolarity = smc_dpm_table->vr1hotpolarity;
 smc_pptable->Padding1 = smc_dpm_table->padding1;
 smc_pptable->Padding2 = smc_dpm_table->padding2;

 smc_pptable->LedPin0 = smc_dpm_table->ledpin0;
 smc_pptable->LedPin1 = smc_dpm_table->ledpin1;
 smc_pptable->LedPin2 = smc_dpm_table->ledpin2;

 smc_pptable->PllGfxclkSpreadEnabled = smc_dpm_table->pllgfxclkspreadenabled;
 smc_pptable->PllGfxclkSpreadPercent = smc_dpm_table->pllgfxclkspreadpercent;
 smc_pptable->PllGfxclkSpreadFreq = smc_dpm_table->pllgfxclkspreadfreq;

 smc_pptable->UclkSpreadEnabled = 0;
 smc_pptable->UclkSpreadPercent = smc_dpm_table->uclkspreadpercent;
 smc_pptable->UclkSpreadFreq = smc_dpm_table->uclkspreadfreq;

 smc_pptable->FclkSpreadEnabled = smc_dpm_table->fclkspreadenabled;
 smc_pptable->FclkSpreadPercent = smc_dpm_table->fclkspreadpercent;
 smc_pptable->FclkSpreadFreq = smc_dpm_table->fclkspreadfreq;

 smc_pptable->FllGfxclkSpreadEnabled = smc_dpm_table->fllgfxclkspreadenabled;
 smc_pptable->FllGfxclkSpreadPercent = smc_dpm_table->fllgfxclkspreadpercent;
 smc_pptable->FllGfxclkSpreadFreq = smc_dpm_table->fllgfxclkspreadfreq;

 for (i = 0; i < I2C_CONTROLLER_NAME_COUNT; i++) {
  smc_pptable->I2cControllers[i].Enabled =
   smc_dpm_table->i2ccontrollers[i].enabled;
  smc_pptable->I2cControllers[i].SlaveAddress =
   smc_dpm_table->i2ccontrollers[i].slaveaddress;
  smc_pptable->I2cControllers[i].ControllerPort =
   smc_dpm_table->i2ccontrollers[i].controllerport;
  smc_pptable->I2cControllers[i].ThermalThrottler =
   smc_dpm_table->i2ccontrollers[i].thermalthrottler;
  smc_pptable->I2cControllers[i].I2cProtocol =
   smc_dpm_table->i2ccontrollers[i].i2cprotocol;
  smc_pptable->I2cControllers[i].I2cSpeed =
   smc_dpm_table->i2ccontrollers[i].i2cspeed;
 }

 return 0;
}
