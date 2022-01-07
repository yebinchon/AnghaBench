
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


union voltage_object_info {int v3; int v2; int v1; } ;
struct TYPE_10__ {int ucVoltageControlId; } ;
struct TYPE_11__ {TYPE_4__ asControl; } ;
struct TYPE_8__ {int ucVoltageControlId; } ;
struct TYPE_9__ {TYPE_2__ asControl; } ;
union voltage_object {TYPE_5__ v2; TYPE_3__ v1; } ;
typedef int u8 ;
typedef scalar_t__ u16 ;
struct TYPE_7__ {TYPE_6__* atom_context; } ;
struct radeon_device {TYPE_1__ mode_info; } ;
struct TYPE_12__ {scalar_t__ bios; } ;


 int DATA ;
 int DRM_ERROR (char*) ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int VOLTAGE_CONTROLLED_BY_GPIO ;
 int VoltageObjectInfo ;
 scalar_t__ atom_lookup_voltage_object_v1 (int *,int) ;
 scalar_t__ atom_lookup_voltage_object_v2 (int *,int) ;
 int atom_lookup_voltage_object_v3 (int *,int,int) ;
 scalar_t__ atom_parse_data_header (TYPE_6__*,int,scalar_t__*,int*,int*,scalar_t__*) ;

bool
radeon_atom_is_voltage_gpio(struct radeon_device *rdev,
       u8 voltage_type, u8 voltage_mode)
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

  switch (frev) {
  case 1:
  case 2:
   switch (crev) {
   case 1:
    voltage_object = (union voltage_object *)
     atom_lookup_voltage_object_v1(&voltage_info->v1, voltage_type);
    if (voltage_object &&
        (voltage_object->v1.asControl.ucVoltageControlId == VOLTAGE_CONTROLLED_BY_GPIO))
     return 1;
    break;
   case 2:
    voltage_object = (union voltage_object *)
     atom_lookup_voltage_object_v2(&voltage_info->v2, voltage_type);
    if (voltage_object &&
        (voltage_object->v2.asControl.ucVoltageControlId == VOLTAGE_CONTROLLED_BY_GPIO))
     return 1;
    break;
   default:
    DRM_ERROR("unknown voltage object table\n");
    return 0;
   }
   break;
  case 3:
   switch (crev) {
   case 1:
    if (atom_lookup_voltage_object_v3(&voltage_info->v3,
          voltage_type, voltage_mode))
     return 1;
    break;
   default:
    DRM_ERROR("unknown voltage object table\n");
    return 0;
   }
   break;
  default:
   DRM_ERROR("unknown voltage object table\n");
   return 0;
  }

 }
 return 0;
}
