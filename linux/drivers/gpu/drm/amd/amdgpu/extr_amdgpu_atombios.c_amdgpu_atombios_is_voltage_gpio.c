
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union voltage_object_info {int v3; } ;
typedef int u8 ;
typedef scalar_t__ u16 ;
struct TYPE_3__ {TYPE_2__* atom_context; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;
struct TYPE_4__ {scalar_t__ bios; } ;


 int DATA ;
 int DRM_ERROR (char*) ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int VoltageObjectInfo ;
 scalar_t__ amdgpu_atom_parse_data_header (TYPE_2__*,int,scalar_t__*,int*,int*,scalar_t__*) ;
 int amdgpu_atombios_lookup_voltage_object_v3 (int *,int,int) ;

bool
amdgpu_atombios_is_voltage_gpio(struct amdgpu_device *adev,
    u8 voltage_type, u8 voltage_mode)
{
 int index = GetIndexIntoMasterTable(DATA, VoltageObjectInfo);
 u8 frev, crev;
 u16 data_offset, size;
 union voltage_object_info *voltage_info;

 if (amdgpu_atom_parse_data_header(adev->mode_info.atom_context, index, &size,
       &frev, &crev, &data_offset)) {
  voltage_info = (union voltage_object_info *)
   (adev->mode_info.atom_context->bios + data_offset);

  switch (frev) {
  case 3:
   switch (crev) {
   case 1:
    if (amdgpu_atombios_lookup_voltage_object_v3(&voltage_info->v3,
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
