
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int ulBootUpUMAClock; int ulSystemConfig; int usMinNBVoltage; int usMaxNBVoltage; int usBootUpNBVoltage; int usNumberOfCyclesInPeriod; } ;
struct TYPE_10__ {int ucNumberOfCyclesInPeriod; int ucNumberOfCyclesInPeriodHi; int ucMaxNBVoltage; int ucMaxNBVoltageHigh; int ucMinNBVoltage; int ucMinNBVoltageHigh; int usK8MemoryClock; int usInterNBVoltageHigh; int usInterNBVoltageLow; void* ucStartingPWM_HighTime; } ;
union igp_info {TYPE_5__ info_2; TYPE_4__ info; } ;
typedef int u8 ;
typedef scalar_t__ u16 ;
struct TYPE_9__ {TYPE_6__* atom_context; } ;
struct TYPE_7__ {struct igp_power_info* priv; } ;
struct TYPE_8__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_3__ mode_info; TYPE_2__ pm; } ;
struct igp_power_info {int voltage_control; int gfx_clock_gating; int num_of_cycles_in_period; int invert_pwm_required; int max_voltage; int min_voltage; int bootup_uma_clk; int system_config; int pwm_voltage_control; void* boot_voltage; void* inter_voltage_high; void* inter_voltage_low; } ;
struct TYPE_12__ {scalar_t__ bios; } ;


 int DATA ;
 int DRM_ERROR (char*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int IntegratedSystemInfo ;
 scalar_t__ atom_parse_data_header (TYPE_6__*,int,int *,int*,int*,scalar_t__*) ;
 struct igp_power_info* kzalloc (int,int ) ;
 void* le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 int r600_get_platform_caps (struct radeon_device*) ;
 int radeon_dpm_fini (struct radeon_device*) ;
 int rs780_parse_power_table (struct radeon_device*) ;

int rs780_dpm_init(struct radeon_device *rdev)
{
 struct igp_power_info *pi;
 int index = GetIndexIntoMasterTable(DATA, IntegratedSystemInfo);
 union igp_info *info;
 u16 data_offset;
 u8 frev, crev;
 int ret;

 pi = kzalloc(sizeof(struct igp_power_info), GFP_KERNEL);
 if (pi == ((void*)0))
  return -ENOMEM;
 rdev->pm.dpm.priv = pi;

 ret = r600_get_platform_caps(rdev);
 if (ret)
  return ret;

 ret = rs780_parse_power_table(rdev);
 if (ret)
  return ret;

 pi->voltage_control = 0;
 pi->gfx_clock_gating = 1;

 if (atom_parse_data_header(rdev->mode_info.atom_context, index, ((void*)0),
       &frev, &crev, &data_offset)) {
  info = (union igp_info *)(rdev->mode_info.atom_context->bios + data_offset);


  switch (crev) {
  case 1:
   pi->num_of_cycles_in_period =
    info->info.ucNumberOfCyclesInPeriod;
   pi->num_of_cycles_in_period |=
    info->info.ucNumberOfCyclesInPeriodHi << 8;
   pi->invert_pwm_required =
    (pi->num_of_cycles_in_period & 0x8000) ? 1 : 0;
   pi->boot_voltage = info->info.ucStartingPWM_HighTime;
   pi->max_voltage = info->info.ucMaxNBVoltage;
   pi->max_voltage |= info->info.ucMaxNBVoltageHigh << 8;
   pi->min_voltage = info->info.ucMinNBVoltage;
   pi->min_voltage |= info->info.ucMinNBVoltageHigh << 8;
   pi->inter_voltage_low =
    le16_to_cpu(info->info.usInterNBVoltageLow);
   pi->inter_voltage_high =
    le16_to_cpu(info->info.usInterNBVoltageHigh);
   pi->voltage_control = 1;
   pi->bootup_uma_clk = info->info.usK8MemoryClock * 100;
   break;
  case 2:
   pi->num_of_cycles_in_period =
    le16_to_cpu(info->info_2.usNumberOfCyclesInPeriod);
   pi->invert_pwm_required =
    (pi->num_of_cycles_in_period & 0x8000) ? 1 : 0;
   pi->boot_voltage =
    le16_to_cpu(info->info_2.usBootUpNBVoltage);
   pi->max_voltage =
    le16_to_cpu(info->info_2.usMaxNBVoltage);
   pi->min_voltage =
    le16_to_cpu(info->info_2.usMinNBVoltage);
   pi->system_config =
    le32_to_cpu(info->info_2.ulSystemConfig);
   pi->pwm_voltage_control =
    (pi->system_config & 0x4) ? 1 : 0;
   pi->voltage_control = 1;
   pi->bootup_uma_clk = le32_to_cpu(info->info_2.ulBootUpUMAClock);
   break;
  default:
   DRM_ERROR("No integrated system info for your GPU\n");
   return -EINVAL;
  }
  if (pi->min_voltage > pi->max_voltage)
   pi->voltage_control = 0;
  if (pi->pwm_voltage_control) {
   if ((pi->num_of_cycles_in_period == 0) ||
       (pi->max_voltage == 0) ||
       (pi->min_voltage == 0))
    pi->voltage_control = 0;
  } else {
   if ((pi->num_of_cycles_in_period == 0) ||
       (pi->max_voltage == 0))
    pi->voltage_control = 0;
  }

  return 0;
 }
 radeon_dpm_fini(rdev);
 return -EINVAL;
}
