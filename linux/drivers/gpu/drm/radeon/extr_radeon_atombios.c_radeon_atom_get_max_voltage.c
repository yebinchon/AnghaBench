
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


union voltage_object_info {int v2; int v1; } ;
struct TYPE_12__ {int ucNumOfVoltageEntries; int * asVIDAdjustEntries; } ;
struct TYPE_10__ {TYPE_5__ asFormula; } ;
struct TYPE_13__ {int ucFlag; int ucNumOfVoltageEntries; int usVoltageStep; int usVoltageBaseLevel; } ;
struct TYPE_9__ {TYPE_6__ asFormula; } ;
union voltage_object {TYPE_3__ v2; TYPE_2__ v1; } ;
typedef int u8 ;
typedef int u16 ;
struct TYPE_8__ {TYPE_7__* atom_context; } ;
struct radeon_device {TYPE_1__ mode_info; } ;
struct TYPE_11__ {int usVoltageValue; } ;
typedef TYPE_4__ VOLTAGE_LUT_ENTRY ;
struct TYPE_14__ {int bios; } ;
typedef TYPE_5__ ATOM_VOLTAGE_FORMULA_V2 ;
typedef TYPE_6__ ATOM_VOLTAGE_FORMULA ;


 int DATA ;
 int DRM_ERROR (char*) ;
 int EINVAL ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int VoltageObjectInfo ;
 scalar_t__ atom_lookup_voltage_object_v1 (int *,int) ;
 scalar_t__ atom_lookup_voltage_object_v2 (int *,int) ;
 scalar_t__ atom_parse_data_header (TYPE_7__*,int,int*,int*,int*,int*) ;
 int le16_to_cpu (int ) ;

int radeon_atom_get_max_voltage(struct radeon_device *rdev,
    u8 voltage_type, u16 *max_voltage)
{
 int index = GetIndexIntoMasterTable(DATA, VoltageObjectInfo);
 u8 frev, crev;
 u16 data_offset, size;
 union voltage_object_info *voltage_info;
 union voltage_object *voltage_object = ((void*)0);

 if (atom_parse_data_header(rdev->mode_info.atom_context, index, &size,
       &frev, &crev, &data_offset)) {
  voltage_info = (union voltage_object_info *)
   (rdev->mode_info.atom_context->bios + data_offset);

  switch (crev) {
  case 1:
   voltage_object = (union voltage_object *)
    atom_lookup_voltage_object_v1(&voltage_info->v1, voltage_type);
   if (voltage_object) {
    ATOM_VOLTAGE_FORMULA *formula =
     &voltage_object->v1.asFormula;
    if (formula->ucFlag & 1)
     *max_voltage =
      le16_to_cpu(formula->usVoltageBaseLevel) +
      formula->ucNumOfVoltageEntries / 2 *
      le16_to_cpu(formula->usVoltageStep);
    else
     *max_voltage =
      le16_to_cpu(formula->usVoltageBaseLevel) +
      (formula->ucNumOfVoltageEntries - 1) *
      le16_to_cpu(formula->usVoltageStep);
    return 0;
   }
   break;
  case 2:
   voltage_object = (union voltage_object *)
    atom_lookup_voltage_object_v2(&voltage_info->v2, voltage_type);
   if (voltage_object) {
    ATOM_VOLTAGE_FORMULA_V2 *formula =
     &voltage_object->v2.asFormula;
    if (formula->ucNumOfVoltageEntries) {
     VOLTAGE_LUT_ENTRY *lut = (VOLTAGE_LUT_ENTRY *)
      ((u8 *)&formula->asVIDAdjustEntries[0] +
       (sizeof(VOLTAGE_LUT_ENTRY) * (formula->ucNumOfVoltageEntries - 1)));
     *max_voltage =
      le16_to_cpu(lut->usVoltageValue);
     return 0;
    }
   }
   break;
  default:
   DRM_ERROR("unknown voltage object table\n");
   return -EINVAL;
  }

 }
 return -EINVAL;
}
