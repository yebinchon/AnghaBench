
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct atom_firmware_info_v3_1 {int bios_scratch_reg_startaddr; } ;
struct TYPE_3__ {TYPE_2__* atom_context; } ;
struct amdgpu_device {int bios_scratch_reg_offset; TYPE_1__ mode_info; } ;
struct TYPE_4__ {scalar_t__ bios; } ;


 scalar_t__ amdgpu_atom_parse_data_header (TYPE_2__*,int,int *,int *,int *,scalar_t__*) ;
 int atom_master_list_of_data_tables_v2_1 ;
 int firmwareinfo ;
 int get_index_into_master_table (int ,int ) ;
 int le32_to_cpu (int ) ;

void amdgpu_atomfirmware_scratch_regs_init(struct amdgpu_device *adev)
{
 int index = get_index_into_master_table(atom_master_list_of_data_tables_v2_1,
      firmwareinfo);
 uint16_t data_offset;

 if (amdgpu_atom_parse_data_header(adev->mode_info.atom_context, index, ((void*)0),
       ((void*)0), ((void*)0), &data_offset)) {
  struct atom_firmware_info_v3_1 *firmware_info =
   (struct atom_firmware_info_v3_1 *)(adev->mode_info.atom_context->bios +
          data_offset);

  adev->bios_scratch_reg_offset =
   le32_to_cpu(firmware_info->bios_scratch_reg_startaddr);
 }
}
