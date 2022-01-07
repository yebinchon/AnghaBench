
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int atom_context; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;


 scalar_t__ amdgpu_atom_parse_cmd_header (int ,int ,int *,int *) ;

__attribute__((used)) static uint32_t bios_cmd_table_para_revision(void *dev,
          uint32_t index)
{
 struct amdgpu_device *adev = dev;
 uint8_t frev, crev;

 if (amdgpu_atom_parse_cmd_header(adev->mode_info.atom_context,
     index,
     &frev, &crev))
  return crev;
 else
  return 0;
}
