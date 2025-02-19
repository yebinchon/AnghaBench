
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct nvkm_sec2 {TYPE_4__* falcon; } ;
struct nvkm_acr {TYPE_2__* subdev; } ;
struct ls_ucode_img_desc {int app_resident_data_size; int app_imem_entry; int app_resident_code_size; int app_resident_code_offset; scalar_t__ app_resident_data_offset; scalar_t__ app_start_offset; } ;
struct ls_ucode_img {scalar_t__ ucode_off; struct ls_ucode_img_desc ucode_desc; } ;
struct acr_r370_flcn_bl_desc {int argc; int argv; int data_size; void* data_dma_base; int code_entry_point; int non_sec_code_size; int non_sec_code_off; void* code_dma_base; int ctx_dma; } ;
struct TYPE_7__ {int limit; } ;
struct TYPE_8__ {TYPE_3__ data; } ;
struct TYPE_6__ {TYPE_1__* device; } ;
struct TYPE_5__ {struct nvkm_sec2* sec2; } ;


 int FALCON_SEC2_DMAIDX_UCODE ;
 scalar_t__ NVKM_MSGQUEUE_CMDLINE_SIZE ;
 void* u64_to_flcn64 (scalar_t__) ;

__attribute__((used)) static void
acr_r370_generate_sec2_bl_desc(const struct nvkm_acr *acr,
          const struct ls_ucode_img *img, u64 wpr_addr,
          void *_desc)
{
 const struct ls_ucode_img_desc *pdesc = &img->ucode_desc;
 const struct nvkm_sec2 *sec = acr->subdev->device->sec2;
 struct acr_r370_flcn_bl_desc *desc = _desc;
 u64 base, addr_code, addr_data;
 u32 addr_args;

 base = wpr_addr + img->ucode_off + pdesc->app_start_offset;

 addr_code = base;
 addr_data = base + pdesc->app_resident_data_offset;
 addr_args = sec->falcon->data.limit;
 addr_args -= NVKM_MSGQUEUE_CMDLINE_SIZE;

 desc->ctx_dma = FALCON_SEC2_DMAIDX_UCODE;
 desc->code_dma_base = u64_to_flcn64(addr_code);
 desc->non_sec_code_off = pdesc->app_resident_code_offset;
 desc->non_sec_code_size = pdesc->app_resident_code_size;
 desc->code_entry_point = pdesc->app_imem_entry;
 desc->data_dma_base = u64_to_flcn64(addr_data);
 desc->data_size = pdesc->app_resident_data_size;
 desc->argc = 1;

 desc->argv = 0x01000000;
}
