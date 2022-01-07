
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int atom_context; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;


 int DATA ;
 int GPUVirtualizationInfo ;
 int GetIndexIntoMasterTable (int ,int ) ;
 scalar_t__ amdgpu_atom_parse_data_header (int ,int,int *,int *,int *,int *) ;

bool amdgpu_atombios_has_gpu_virtualization_table(struct amdgpu_device *adev)
{
 int index = GetIndexIntoMasterTable(DATA, GPUVirtualizationInfo);
 u8 frev, crev;
 u16 data_offset, size;

 if (amdgpu_atom_parse_data_header(adev->mode_info.atom_context, index, &size,
       &frev, &crev, &data_offset))
  return 1;

 return 0;
}
