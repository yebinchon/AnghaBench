
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int firmware_capability; } ;
union firmware_info {TYPE_1__ v31; } ;
typedef int u8 ;
typedef scalar_t__ u16 ;
struct amdgpu_mode_info {TYPE_2__* atom_context; } ;
struct amdgpu_device {struct amdgpu_mode_info mode_info; } ;
struct TYPE_4__ {scalar_t__ bios; } ;


 int ATOM_FIRMWARE_CAP_SRAM_ECC ;
 scalar_t__ amdgpu_atom_parse_data_header (TYPE_2__*,int,scalar_t__*,int*,int*,scalar_t__*) ;
 int atom_master_list_of_data_tables_v2_1 ;
 int firmwareinfo ;
 int get_index_into_master_table (int ,int ) ;
 int le32_to_cpu (int ) ;

bool amdgpu_atomfirmware_sram_ecc_supported(struct amdgpu_device *adev)
{
 struct amdgpu_mode_info *mode_info = &adev->mode_info;
 int index;
 u16 data_offset, size;
 union firmware_info *firmware_info;
 u8 frev, crev;
 bool sram_ecc_supported = 0;

 index = get_index_into_master_table(atom_master_list_of_data_tables_v2_1,
   firmwareinfo);

 if (amdgpu_atom_parse_data_header(adev->mode_info.atom_context,
    index, &size, &frev, &crev, &data_offset)) {

  if ((frev == 3 && crev >=1) || (frev > 3)) {
   firmware_info = (union firmware_info *)
    (mode_info->atom_context->bios + data_offset);
   sram_ecc_supported =
    (le32_to_cpu(firmware_info->v31.firmware_capability) &
     ATOM_FIRMWARE_CAP_SRAM_ECC) ? 1 : 0;
  }
 }

 return sram_ecc_supported;
}
