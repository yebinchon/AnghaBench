
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct atom_context {int scratch_size_bytes; int scratch; scalar_t__ bios; } ;
struct _ATOM_VRAM_USAGE_BY_FIRMWARE {TYPE_1__* asFirmwareVramReserveInfo; } ;
struct TYPE_2__ {int usFirmwareUseInKb; int ulStartAddrUsedByFirmware; } ;


 int DATA ;
 int DRM_DEBUG (char*,int ,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int VRAM_UsageByFirmware ;
 scalar_t__ atom_parse_data_header (struct atom_context*,int,int *,int *,int *,scalar_t__*) ;
 int kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

int atom_allocate_fb_scratch(struct atom_context *ctx)
{
 int index = GetIndexIntoMasterTable(DATA, VRAM_UsageByFirmware);
 uint16_t data_offset;
 int usage_bytes = 0;
 struct _ATOM_VRAM_USAGE_BY_FIRMWARE *firmware_usage;

 if (atom_parse_data_header(ctx, index, ((void*)0), ((void*)0), ((void*)0), &data_offset)) {
  firmware_usage = (struct _ATOM_VRAM_USAGE_BY_FIRMWARE *)(ctx->bios + data_offset);

  DRM_DEBUG("atom firmware requested %08x %dkb\n",
     le32_to_cpu(firmware_usage->asFirmwareVramReserveInfo[0].ulStartAddrUsedByFirmware),
     le16_to_cpu(firmware_usage->asFirmwareVramReserveInfo[0].usFirmwareUseInKb));

  usage_bytes = le16_to_cpu(firmware_usage->asFirmwareVramReserveInfo[0].usFirmwareUseInKb) * 1024;
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
