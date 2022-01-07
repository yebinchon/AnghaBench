
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct vram_usagebyfirmware_v2_1 {int used_by_driver_in_kb; int used_by_firmware_in_kb; int start_address_in_kb; } ;
struct atom_context {int scratch_size_bytes; int scratch; scalar_t__ bios; } ;
struct TYPE_4__ {scalar_t__ size; scalar_t__ start_offset; } ;
struct TYPE_3__ {struct atom_context* atom_context; } ;
struct amdgpu_device {TYPE_2__ fw_vram_usage; TYPE_1__ mode_info; } ;


 int ATOM_VRAM_BLOCK_SRIOV_MSG_SHARE_RESERVATION ;
 scalar_t__ ATOM_VRAM_OPERATION_FLAGS_MASK ;
 int ATOM_VRAM_OPERATION_FLAGS_SHIFT ;
 int DRM_DEBUG (char*,scalar_t__,int,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ amdgpu_atom_parse_data_header (struct atom_context*,int,int *,int *,int *,scalar_t__*) ;
 int atom_master_list_of_data_tables_v2_1 ;
 int get_index_into_master_table (int ,int ) ;
 int kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int vram_usagebyfirmware ;

int amdgpu_atomfirmware_allocate_fb_scratch(struct amdgpu_device *adev)
{
 struct atom_context *ctx = adev->mode_info.atom_context;
 int index = get_index_into_master_table(atom_master_list_of_data_tables_v2_1,
      vram_usagebyfirmware);
 struct vram_usagebyfirmware_v2_1 * firmware_usage;
 uint32_t start_addr, size;
 uint16_t data_offset;
 int usage_bytes = 0;

 if (amdgpu_atom_parse_data_header(ctx, index, ((void*)0), ((void*)0), ((void*)0), &data_offset)) {
  firmware_usage = (struct vram_usagebyfirmware_v2_1 *)(ctx->bios + data_offset);
  DRM_DEBUG("atom firmware requested %08x %dkb fw %dkb drv\n",
     le32_to_cpu(firmware_usage->start_address_in_kb),
     le16_to_cpu(firmware_usage->used_by_firmware_in_kb),
     le16_to_cpu(firmware_usage->used_by_driver_in_kb));

  start_addr = le32_to_cpu(firmware_usage->start_address_in_kb);
  size = le16_to_cpu(firmware_usage->used_by_firmware_in_kb);

  if ((uint32_t)(start_addr & ATOM_VRAM_OPERATION_FLAGS_MASK) ==
   (uint32_t)(ATOM_VRAM_BLOCK_SRIOV_MSG_SHARE_RESERVATION <<
   ATOM_VRAM_OPERATION_FLAGS_SHIFT)) {

   adev->fw_vram_usage.start_offset = (start_addr &
    (~ATOM_VRAM_OPERATION_FLAGS_MASK)) << 10;
   adev->fw_vram_usage.size = size << 10;

   usage_bytes = 0;
  } else {
   usage_bytes = le16_to_cpu(firmware_usage->used_by_driver_in_kb) << 10;
  }
 }
 ctx->scratch_size_bytes = 0;
 if (usage_bytes == 0)
  usage_bytes = 20 * 1024;

 ctx->scratch = kzalloc(usage_bytes, GFP_KERNEL);
 if (!ctx->scratch)
  return -ENOMEM;
 ctx->scratch_size_bytes = usage_bytes;
 return 0;
}
