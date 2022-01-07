
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct nvkm_pmu {TYPE_4__* falcon; } ;
struct nvkm_acr {TYPE_2__* subdev; } ;
struct ls_ucode_img_desc {int app_start_offset; int app_resident_code_offset; int app_resident_data_offset; int app_resident_data_size; int app_imem_entry; int app_resident_code_size; int app_size; } ;
struct ls_ucode_img {int ucode_off; struct ls_ucode_img_desc ucode_desc; } ;
struct acr_r352_pmu_bl_desc {int argc; int argv; void* overlay_dma_base1; void* overlay_dma_base; int data_size; void* data_dma_base1; void* data_dma_base; int code_entry_point; int code_size_to_load; int code_size_total; void* code_dma_base1; void* code_dma_base; int dma_idx; } ;
struct TYPE_7__ {int limit; } ;
struct TYPE_8__ {TYPE_3__ data; } ;
struct TYPE_6__ {TYPE_1__* device; } ;
struct TYPE_5__ {struct nvkm_pmu* pmu; } ;


 int FALCON_DMAIDX_UCODE ;
 scalar_t__ NVKM_MSGQUEUE_CMDLINE_SIZE ;
 void* lower_32_bits (int) ;
 void* upper_32_bits (int) ;

__attribute__((used)) static void
acr_r352_generate_pmu_bl_desc(const struct nvkm_acr *acr,
         const struct ls_ucode_img *img, u64 wpr_addr,
         void *_desc)
{
 const struct ls_ucode_img_desc *pdesc = &img->ucode_desc;
 const struct nvkm_pmu *pmu = acr->subdev->device->pmu;
 struct acr_r352_pmu_bl_desc *desc = _desc;
 u64 base;
 u64 addr_code;
 u64 addr_data;
 u32 addr_args;

 base = wpr_addr + img->ucode_off + pdesc->app_start_offset;
 addr_code = (base + pdesc->app_resident_code_offset) >> 8;
 addr_data = (base + pdesc->app_resident_data_offset) >> 8;
 addr_args = pmu->falcon->data.limit;
 addr_args -= NVKM_MSGQUEUE_CMDLINE_SIZE;

 desc->dma_idx = FALCON_DMAIDX_UCODE;
 desc->code_dma_base = lower_32_bits(addr_code);
 desc->code_dma_base1 = upper_32_bits(addr_code);
 desc->code_size_total = pdesc->app_size;
 desc->code_size_to_load = pdesc->app_resident_code_size;
 desc->code_entry_point = pdesc->app_imem_entry;
 desc->data_dma_base = lower_32_bits(addr_data);
 desc->data_dma_base1 = upper_32_bits(addr_data);
 desc->data_size = pdesc->app_resident_data_size;
 desc->overlay_dma_base = lower_32_bits(addr_code);
 desc->overlay_dma_base1 = upper_32_bits(addr_code);
 desc->argc = 1;
 desc->argv = addr_args;
}
