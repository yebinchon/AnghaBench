
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int usVoltageLevel; int ucVoltageMode; int ucVoltageType; } ;
union set_voltage {TYPE_1__ v3; } ;
typedef int uint32_t ;
typedef int u8 ;
typedef int u16 ;
struct TYPE_4__ {int atom_context; } ;
struct radeon_device {TYPE_2__ mode_info; } ;


 int ATOM_GET_LEAKAGE_ID ;
 int COMMAND ;
 int DRM_ERROR (char*,int,int) ;
 int EINVAL ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int SetVoltage ;
 int atom_execute_table (int ,int,int *) ;
 int atom_parse_cmd_header (int ,int,int*,int*) ;
 int le16_to_cpu (int ) ;

int radeon_atom_get_leakage_id_from_vbios(struct radeon_device *rdev,
       u16 *leakage_id)
{
 union set_voltage args;
 int index = GetIndexIntoMasterTable(COMMAND, SetVoltage);
 u8 frev, crev;

 if (!atom_parse_cmd_header(rdev->mode_info.atom_context, index, &frev, &crev))
  return -EINVAL;

 switch (crev) {
 case 3:
 case 4:
  args.v3.ucVoltageType = 0;
  args.v3.ucVoltageMode = ATOM_GET_LEAKAGE_ID;
  args.v3.usVoltageLevel = 0;

  atom_execute_table(rdev->mode_info.atom_context, index, (uint32_t *)&args);

  *leakage_id = le16_to_cpu(args.v3.usVoltageLevel);
  break;
 default:
  DRM_ERROR("Unknown table version %d, %d\n", frev, crev);
  return -EINVAL;
 }

 return 0;
}
