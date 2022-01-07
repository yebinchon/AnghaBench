
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct pp_hwmgr {int not_vf; int device; } ;
struct cgs_firmware_info {int image_size; int mc_addr; int fw_version; int member_0; } ;
struct SMU_Entry {int data_size_byte; int flags; scalar_t__ num_register_entries; scalar_t__ meta_data_addr_low; scalar_t__ meta_data_addr_high; int image_addr_low; int image_addr_high; scalar_t__ id; int version; } ;


 scalar_t__ UCODE_ID_CP_MEC ;
 scalar_t__ UCODE_ID_RLC_G ;
 int cgs_get_firmware_info (int ,int ,struct cgs_firmware_info*) ;
 int lower_32_bits (int ) ;
 int smu7_convert_fw_type_to_cgs (scalar_t__) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int smu7_populate_single_firmware_entry(struct pp_hwmgr *hwmgr,
      uint32_t fw_type,
      struct SMU_Entry *entry)
{
 int result = 0;
 struct cgs_firmware_info info = {0};

 result = cgs_get_firmware_info(hwmgr->device,
    smu7_convert_fw_type_to_cgs(fw_type),
    &info);

 if (!result) {
  entry->version = info.fw_version;
  entry->id = (uint16_t)fw_type;
  entry->image_addr_high = upper_32_bits(info.mc_addr);
  entry->image_addr_low = lower_32_bits(info.mc_addr);
  entry->meta_data_addr_high = 0;
  entry->meta_data_addr_low = 0;


  if (!hwmgr->not_vf)
   info.image_size -= 20;
  entry->data_size_byte = info.image_size;
  entry->num_register_entries = 0;
 }

 if ((fw_type == UCODE_ID_RLC_G)
  || (fw_type == UCODE_ID_CP_MEC))
  entry->flags = 1;
 else
  entry->flags = 0;

 return 0;
}
