
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct hsf_load_header {int data_size; scalar_t__ data_dma_base; int non_sec_code_size; int non_sec_code_off; } ;
struct acr_r361_flcn_bl_desc {int data_size; void* data_dma_base; scalar_t__ code_entry_point; int sec_code_size; int sec_code_off; int non_sec_code_size; int non_sec_code_off; void* code_dma_base; int ctx_dma; } ;


 int FALCON_DMAIDX_VIRT ;
 int hsf_load_header_app_off (struct hsf_load_header const*,int ) ;
 int hsf_load_header_app_size (struct hsf_load_header const*,int ) ;
 void* u64_to_flcn64 (scalar_t__) ;

void
acr_r361_generate_hs_bl_desc(const struct hsf_load_header *hdr, void *_bl_desc,
       u64 offset)
{
 struct acr_r361_flcn_bl_desc *bl_desc = _bl_desc;

 bl_desc->ctx_dma = FALCON_DMAIDX_VIRT;
 bl_desc->code_dma_base = u64_to_flcn64(offset);
 bl_desc->non_sec_code_off = hdr->non_sec_code_off;
 bl_desc->non_sec_code_size = hdr->non_sec_code_size;
 bl_desc->sec_code_off = hsf_load_header_app_off(hdr, 0);
 bl_desc->sec_code_size = hsf_load_header_app_size(hdr, 0);
 bl_desc->code_entry_point = 0;
 bl_desc->data_dma_base = u64_to_flcn64(offset + hdr->data_dma_base);
 bl_desc->data_size = hdr->data_size;
}
