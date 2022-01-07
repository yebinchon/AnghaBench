
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int ucVoltageType; void* usVoltageLevel; int ucVoltageMode; } ;
struct TYPE_6__ {int ucVoltageType; void* usVoltageLevel; int ucVoltageMode; } ;
struct TYPE_5__ {int ucVoltageType; int ucVoltageIndex; int ucVoltageMode; } ;
union set_voltage {TYPE_3__ v3; TYPE_2__ v2; TYPE_1__ v1; } ;
typedef int uint32_t ;
typedef int u8 ;
typedef int u16 ;
struct TYPE_8__ {int atom_context; } ;
struct radeon_device {TYPE_4__ mode_info; } ;


 int ATOM_SET_VOLTAGE ;
 int COMMAND ;
 int DRM_ERROR (char*,int,int) ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int SET_ASIC_VOLTAGE_MODE_ALL_SOURCE ;
 int SET_ASIC_VOLTAGE_MODE_SET_VOLTAGE ;
 int SetVoltage ;
 int atom_execute_table (int ,int,int *) ;
 int atom_parse_cmd_header (int ,int,int*,int*) ;
 void* cpu_to_le16 (int) ;

void radeon_atom_set_voltage(struct radeon_device *rdev, u16 voltage_level, u8 voltage_type)
{
 union set_voltage args;
 int index = GetIndexIntoMasterTable(COMMAND, SetVoltage);
 u8 frev, crev, volt_index = voltage_level;

 if (!atom_parse_cmd_header(rdev->mode_info.atom_context, index, &frev, &crev))
  return;


 if (voltage_level == 0xff01)
  return;

 switch (crev) {
 case 1:
  args.v1.ucVoltageType = voltage_type;
  args.v1.ucVoltageMode = SET_ASIC_VOLTAGE_MODE_ALL_SOURCE;
  args.v1.ucVoltageIndex = volt_index;
  break;
 case 2:
  args.v2.ucVoltageType = voltage_type;
  args.v2.ucVoltageMode = SET_ASIC_VOLTAGE_MODE_SET_VOLTAGE;
  args.v2.usVoltageLevel = cpu_to_le16(voltage_level);
  break;
 case 3:
  args.v3.ucVoltageType = voltage_type;
  args.v3.ucVoltageMode = ATOM_SET_VOLTAGE;
  args.v3.usVoltageLevel = cpu_to_le16(voltage_level);
  break;
 default:
  DRM_ERROR("Unknown table version %d, %d\n", frev, crev);
  return;
 }

 atom_execute_table(rdev->mode_info.atom_context, index, (uint32_t *)&args);
}
