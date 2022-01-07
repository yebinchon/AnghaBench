
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef void* uint16_t ;
struct vega20_od8_settings {TYPE_1__* od8_settings_array; } ;
struct smu_table_context {scalar_t__ overdrive_table; } ;
struct smu_context {scalar_t__ od_settings; struct smu_table_context smu_table; } ;
typedef int int16_t ;
struct TYPE_4__ {void* MaxOpTemp; void* FanTargetTemperature; void* FanMinimumPwm; void* FanMaximumRpm; int OverDrivePct; void* UclkFmax; void* GfxclkVolt3; void* GfxclkFreq3; void* GfxclkVolt2; void* GfxclkFreq2; void* GfxclkVolt1; void* GfxclkFreq1; void* GfxclkFmax; void* GfxclkFmin; } ;
struct TYPE_3__ {int min_value; int max_value; } ;
typedef TYPE_2__ OverDriveTable_t ;


 int EINVAL ;
__attribute__((used)) static int vega20_update_specified_od8_value(struct smu_context *smu,
          uint32_t index,
          uint32_t value)
{
 struct smu_table_context *table_context = &smu->smu_table;
 OverDriveTable_t *od_table =
  (OverDriveTable_t *)(table_context->overdrive_table);
 struct vega20_od8_settings *od8_settings =
  (struct vega20_od8_settings *)smu->od_settings;

 switch (index) {
 case 137:
  od_table->GfxclkFmin = (uint16_t)value;
  break;

 case 138:
  if (value < od8_settings->od8_settings_array[138].min_value ||
      value > od8_settings->od8_settings_array[138].max_value)
   return -EINVAL;
  od_table->GfxclkFmax = (uint16_t)value;
  break;

 case 136:
  od_table->GfxclkFreq1 = (uint16_t)value;
  break;

 case 133:
  od_table->GfxclkVolt1 = (uint16_t)value;
  break;

 case 135:
  od_table->GfxclkFreq2 = (uint16_t)value;
  break;

 case 132:
  od_table->GfxclkVolt2 = (uint16_t)value;
  break;

 case 134:
  od_table->GfxclkFreq3 = (uint16_t)value;
  break;

 case 131:
  od_table->GfxclkVolt3 = (uint16_t)value;
  break;

 case 128:
  if (value < od8_settings->od8_settings_array[128].min_value ||
      value > od8_settings->od8_settings_array[128].max_value)
   return -EINVAL;
  od_table->UclkFmax = (uint16_t)value;
  break;

 case 129:
  od_table->OverDrivePct = (int16_t)value;
  break;

 case 141:
  od_table->FanMaximumRpm = (uint16_t)value;
  break;

 case 140:
  od_table->FanMinimumPwm = (uint16_t)value;
  break;

 case 139:
  od_table->FanTargetTemperature = (uint16_t)value;
  break;

 case 130:
  od_table->MaxOpTemp = (uint16_t)value;
  break;
 }

 return 0;
}
