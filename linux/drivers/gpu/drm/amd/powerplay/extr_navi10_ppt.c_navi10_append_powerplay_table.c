
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct smu_table_context {TYPE_2__* driver_pptable; } ;
struct smu_context {struct smu_table_context smu_table; struct amdgpu_device* adev; } ;
struct atom_smc_dpm_info_v4_5 {int MvddRatio; int BoardPadding; int TotalBoardPower; int SocclkSpreadFreq; int SocclkSpreadPercent; int SoclkSpreadEnabled; int UclkSpreadFreq; int UclkSpreadPercent; int UclkSpreadEnabled; int DfllGfxclkSpreadFreq; int DfllGfxclkSpreadPercent; int DfllGfxclkSpreadEnabled; int PllGfxclkSpreadFreq; int PllGfxclkSpreadPercent; int PllGfxclkSpreadEnabled; int padding8_4; int LedPin2; int LedPin1; int LedPin0; int GthrPolarity; int GthrGpio; int VR1HotPolarity; int VR1HotGpio; int VR0HotPolarity; int VR0HotGpio; int AcDcPolarity; int AcDcGpio; int Padding_TelemetryMem1; int Mem1Offset; int Mem1MaxCurrent; int Padding_TelemetryMem0; int Mem0Offset; int Mem0MaxCurrent; int Padding_TelemetrySoc; int SocOffset; int SocMaxCurrent; int Padding_TelemetryGfx; int GfxOffset; int GfxMaxCurrent; int Padding8_V; int ExternalSensorPresent; int SocUlvPhaseSheddingMask; int GfxUlvPhaseSheddingMask; int VddMem1VrMapping; int VddMem0VrMapping; int VddSocVrMapping; int VddGfxVrMapping; int MaxVoltageStepSoc; int MaxVoltageStepGfx; int I2cControllers; } ;
struct TYPE_3__ {int pp_feature; } ;
struct amdgpu_device {TYPE_1__ pm; } ;
struct TYPE_4__ {int DebugOverrides; int MvddRatio; int BoardPadding; int TotalBoardPower; int SocclkSpreadFreq; int SocclkSpreadPercent; int SoclkSpreadEnabled; int UclkSpreadFreq; int UclkSpreadPercent; int UclkSpreadEnabled; int DfllGfxclkSpreadFreq; int DfllGfxclkSpreadPercent; int DfllGfxclkSpreadEnabled; int PllGfxclkSpreadFreq; int PllGfxclkSpreadPercent; int PllGfxclkSpreadEnabled; int padding8_4; int LedPin2; int LedPin1; int LedPin0; int GthrPolarity; int GthrGpio; int VR1HotPolarity; int VR1HotGpio; int VR0HotPolarity; int VR0HotGpio; int AcDcPolarity; int AcDcGpio; int Padding_TelemetryMem1; int Mem1Offset; int Mem1MaxCurrent; int Padding_TelemetryMem0; int Mem0Offset; int Mem0MaxCurrent; int Padding_TelemetrySoc; int SocOffset; int SocMaxCurrent; int Padding_TelemetryGfx; int GfxOffset; int GfxMaxCurrent; int Padding8_V; int ExternalSensorPresent; int SocUlvPhaseSheddingMask; int GfxUlvPhaseSheddingMask; int VddMem1VrMapping; int VddMem0VrMapping; int VddSocVrMapping; int VddGfxVrMapping; int MaxVoltageStepSoc; int MaxVoltageStepGfx; int I2cControllers; } ;
typedef TYPE_2__ PPTable_t ;
typedef int I2cControllerConfig_t ;


 int DPM_OVERRIDE_DISABLE_DFLL_PLL_SHUTDOWN ;
 int NUM_I2C_CONTROLLERS ;
 int PP_GFXOFF_MASK ;
 int atom_master_list_of_data_tables_v2_1 ;
 int get_index_into_master_table (int ,int ) ;
 int memcpy (int ,int ,int) ;
 int smc_dpm_info ;
 int smu_get_atom_data_table (struct smu_context*,int,int *,int *,int *,int **) ;

__attribute__((used)) static int navi10_append_powerplay_table(struct smu_context *smu)
{
 struct amdgpu_device *adev = smu->adev;
 struct smu_table_context *table_context = &smu->smu_table;
 PPTable_t *smc_pptable = table_context->driver_pptable;
 struct atom_smc_dpm_info_v4_5 *smc_dpm_table;
 int index, ret;

 index = get_index_into_master_table(atom_master_list_of_data_tables_v2_1,
        smc_dpm_info);

 ret = smu_get_atom_data_table(smu, index, ((void*)0), ((void*)0), ((void*)0),
          (uint8_t **)&smc_dpm_table);
 if (ret)
  return ret;

 memcpy(smc_pptable->I2cControllers, smc_dpm_table->I2cControllers,
        sizeof(I2cControllerConfig_t) * NUM_I2C_CONTROLLERS);


 smc_pptable->MaxVoltageStepGfx = smc_dpm_table->MaxVoltageStepGfx;
 smc_pptable->MaxVoltageStepSoc = smc_dpm_table->MaxVoltageStepSoc;
 smc_pptable->VddGfxVrMapping = smc_dpm_table->VddGfxVrMapping;
 smc_pptable->VddSocVrMapping = smc_dpm_table->VddSocVrMapping;
 smc_pptable->VddMem0VrMapping = smc_dpm_table->VddMem0VrMapping;
 smc_pptable->VddMem1VrMapping = smc_dpm_table->VddMem1VrMapping;
 smc_pptable->GfxUlvPhaseSheddingMask = smc_dpm_table->GfxUlvPhaseSheddingMask;
 smc_pptable->SocUlvPhaseSheddingMask = smc_dpm_table->SocUlvPhaseSheddingMask;
 smc_pptable->ExternalSensorPresent = smc_dpm_table->ExternalSensorPresent;
 smc_pptable->Padding8_V = smc_dpm_table->Padding8_V;


 smc_pptable->GfxMaxCurrent = smc_dpm_table->GfxMaxCurrent;
 smc_pptable->GfxOffset = smc_dpm_table->GfxOffset;
 smc_pptable->Padding_TelemetryGfx = smc_dpm_table->Padding_TelemetryGfx;
 smc_pptable->SocMaxCurrent = smc_dpm_table->SocMaxCurrent;
 smc_pptable->SocOffset = smc_dpm_table->SocOffset;
 smc_pptable->Padding_TelemetrySoc = smc_dpm_table->Padding_TelemetrySoc;
 smc_pptable->Mem0MaxCurrent = smc_dpm_table->Mem0MaxCurrent;
 smc_pptable->Mem0Offset = smc_dpm_table->Mem0Offset;
 smc_pptable->Padding_TelemetryMem0 = smc_dpm_table->Padding_TelemetryMem0;
 smc_pptable->Mem1MaxCurrent = smc_dpm_table->Mem1MaxCurrent;
 smc_pptable->Mem1Offset = smc_dpm_table->Mem1Offset;
 smc_pptable->Padding_TelemetryMem1 = smc_dpm_table->Padding_TelemetryMem1;


 smc_pptable->AcDcGpio = smc_dpm_table->AcDcGpio;
 smc_pptable->AcDcPolarity = smc_dpm_table->AcDcPolarity;
 smc_pptable->VR0HotGpio = smc_dpm_table->VR0HotGpio;
 smc_pptable->VR0HotPolarity = smc_dpm_table->VR0HotPolarity;
 smc_pptable->VR1HotGpio = smc_dpm_table->VR1HotGpio;
 smc_pptable->VR1HotPolarity = smc_dpm_table->VR1HotPolarity;
 smc_pptable->GthrGpio = smc_dpm_table->GthrGpio;
 smc_pptable->GthrPolarity = smc_dpm_table->GthrPolarity;


 smc_pptable->LedPin0 = smc_dpm_table->LedPin0;
 smc_pptable->LedPin1 = smc_dpm_table->LedPin1;
 smc_pptable->LedPin2 = smc_dpm_table->LedPin2;
 smc_pptable->padding8_4 = smc_dpm_table->padding8_4;


 smc_pptable->PllGfxclkSpreadEnabled = smc_dpm_table->PllGfxclkSpreadEnabled;
 smc_pptable->PllGfxclkSpreadPercent = smc_dpm_table->PllGfxclkSpreadPercent;
 smc_pptable->PllGfxclkSpreadFreq = smc_dpm_table->PllGfxclkSpreadFreq;


 smc_pptable->DfllGfxclkSpreadEnabled = smc_dpm_table->DfllGfxclkSpreadEnabled;
 smc_pptable->DfllGfxclkSpreadPercent = smc_dpm_table->DfllGfxclkSpreadPercent;
 smc_pptable->DfllGfxclkSpreadFreq = smc_dpm_table->DfllGfxclkSpreadFreq;


 smc_pptable->UclkSpreadEnabled = smc_dpm_table->UclkSpreadEnabled;
 smc_pptable->UclkSpreadPercent = smc_dpm_table->UclkSpreadPercent;
 smc_pptable->UclkSpreadFreq = smc_dpm_table->UclkSpreadFreq;


 smc_pptable->SoclkSpreadEnabled = smc_dpm_table->SoclkSpreadEnabled;
 smc_pptable->SocclkSpreadPercent = smc_dpm_table->SocclkSpreadPercent;
 smc_pptable->SocclkSpreadFreq = smc_dpm_table->SocclkSpreadFreq;


 smc_pptable->TotalBoardPower = smc_dpm_table->TotalBoardPower;
 smc_pptable->BoardPadding = smc_dpm_table->BoardPadding;


 smc_pptable->MvddRatio = smc_dpm_table->MvddRatio;

 if (adev->pm.pp_feature & PP_GFXOFF_MASK) {

  smc_pptable->DebugOverrides |= DPM_OVERRIDE_DISABLE_DFLL_PLL_SHUTDOWN;
 }

 return 0;
}
