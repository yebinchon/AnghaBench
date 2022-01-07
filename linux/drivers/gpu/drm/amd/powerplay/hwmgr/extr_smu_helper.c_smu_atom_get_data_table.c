
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {TYPE_2__* atom_context; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;
struct TYPE_4__ {scalar_t__ bios; } ;


 scalar_t__ amdgpu_atom_parse_data_header (TYPE_2__*,int ,int*,void*,void*,int*) ;

void *smu_atom_get_data_table(void *dev, uint32_t table, uint16_t *size,
      uint8_t *frev, uint8_t *crev)
{
 struct amdgpu_device *adev = dev;
 uint16_t data_start;

 if (amdgpu_atom_parse_data_header(
      adev->mode_info.atom_context, table, size,
      frev, crev, &data_start))
  return (uint8_t *)adev->mode_info.atom_context->bios +
   data_start;

 return ((void*)0);
}
