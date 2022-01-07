
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int umc_config; } ;
union umc_info {TYPE_1__ v31; } ;
typedef int u8 ;
typedef scalar_t__ u16 ;
struct amdgpu_mode_info {TYPE_2__* atom_context; } ;
struct amdgpu_device {struct amdgpu_mode_info mode_info; } ;
struct TYPE_4__ {scalar_t__ bios; } ;


 int UMC_CONFIG__DEFAULT_MEM_ECC_ENABLE ;
 scalar_t__ amdgpu_atom_parse_data_header (TYPE_2__*,int,scalar_t__*,int*,int*,scalar_t__*) ;
 int atom_master_list_of_data_tables_v2_1 ;
 int get_index_into_master_table (int ,union umc_info*) ;
 int le32_to_cpu (int ) ;

bool amdgpu_atomfirmware_mem_ecc_supported(struct amdgpu_device *adev)
{
 struct amdgpu_mode_info *mode_info = &adev->mode_info;
 int index;
 u16 data_offset, size;
 union umc_info *umc_info;
 u8 frev, crev;
 bool ecc_default_enabled = 0;

 index = get_index_into_master_table(atom_master_list_of_data_tables_v2_1,
   umc_info);

 if (amdgpu_atom_parse_data_header(mode_info->atom_context,
    index, &size, &frev, &crev, &data_offset)) {

  if ((frev == 3 && crev >= 1) || (frev > 3)) {
   umc_info = (union umc_info *)
    (mode_info->atom_context->bios + data_offset);
   ecc_default_enabled =
    (le32_to_cpu(umc_info->v31.umc_config) &
     UMC_CONFIG__DEFAULT_MEM_ECC_ENABLE) ? 1 : 0;
  }
 }

 return ecc_default_enabled;
}
