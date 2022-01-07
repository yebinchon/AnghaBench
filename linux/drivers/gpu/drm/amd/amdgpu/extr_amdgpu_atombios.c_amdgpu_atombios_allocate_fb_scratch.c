
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
typedef int u64 ;
struct atom_context {int scratch_size_bytes; int scratch; scalar_t__ bios; } ;
struct TYPE_5__ {int start_offset; int size; } ;
struct TYPE_4__ {struct atom_context* atom_context; } ;
struct amdgpu_device {TYPE_2__ fw_vram_usage; TYPE_1__ mode_info; } ;
struct _ATOM_VRAM_USAGE_BY_FIRMWARE {TYPE_3__* asFirmwareVramReserveInfo; } ;
struct TYPE_6__ {int ulStartAddrUsedByFirmware; int usFirmwareUseInKb; } ;


 int ATOM_VRAM_BLOCK_SRIOV_MSG_SHARE_RESERVATION ;
 int ATOM_VRAM_OPERATION_FLAGS_MASK ;
 int ATOM_VRAM_OPERATION_FLAGS_SHIFT ;
 int DATA ;
 int DRM_DEBUG (char*,int ,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int VRAM_UsageByFirmware ;
 scalar_t__ amdgpu_atom_parse_data_header (struct atom_context*,int,int *,int *,int *,scalar_t__*) ;
 int kzalloc (int,int ) ;
 int le16_to_cpu (int) ;
 int le32_to_cpu (int) ;

__attribute__((used)) static int amdgpu_atombios_allocate_fb_scratch(struct amdgpu_device *adev)
{
 struct atom_context *ctx = adev->mode_info.atom_context;
 int index = GetIndexIntoMasterTable(DATA, VRAM_UsageByFirmware);
 uint16_t data_offset;
 int usage_bytes = 0;
 struct _ATOM_VRAM_USAGE_BY_FIRMWARE *firmware_usage;
 u64 start_addr;
 u64 size;

 if (amdgpu_atom_parse_data_header(ctx, index, ((void*)0), ((void*)0), ((void*)0), &data_offset)) {
  firmware_usage = (struct _ATOM_VRAM_USAGE_BY_FIRMWARE *)(ctx->bios + data_offset);

  DRM_DEBUG("atom firmware requested %08x %dkb\n",
     le32_to_cpu(firmware_usage->asFirmwareVramReserveInfo[0].ulStartAddrUsedByFirmware),
     le16_to_cpu(firmware_usage->asFirmwareVramReserveInfo[0].usFirmwareUseInKb));

  start_addr = firmware_usage->asFirmwareVramReserveInfo[0].ulStartAddrUsedByFirmware;
  size = firmware_usage->asFirmwareVramReserveInfo[0].usFirmwareUseInKb;

  if ((uint32_t)(start_addr & ATOM_VRAM_OPERATION_FLAGS_MASK) ==
   (uint32_t)(ATOM_VRAM_BLOCK_SRIOV_MSG_SHARE_RESERVATION <<
   ATOM_VRAM_OPERATION_FLAGS_SHIFT)) {

   adev->fw_vram_usage.start_offset = (start_addr &
    (~ATOM_VRAM_OPERATION_FLAGS_MASK)) << 10;
   adev->fw_vram_usage.size = size << 10;

   usage_bytes = 0;
  } else {
   usage_bytes = le16_to_cpu(firmware_usage->asFirmwareVramReserveInfo[0].usFirmwareUseInKb) * 1024;
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
