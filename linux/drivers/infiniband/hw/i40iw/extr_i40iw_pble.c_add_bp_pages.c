
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct i40iw_sc_dev {int hw; int back_dev; int is_pf; } ;
struct i40iw_manage_vf_pble_info {size_t first_pd_index; int inv_pd_ent; int sd_index; int pd_pl_pba; int pd_entry_cnt; } ;
struct TYPE_5__ {int pa; } ;
struct TYPE_6__ {TYPE_1__ pd_page_addr; struct i40iw_hmc_pd_entry* pd_entry; } ;
struct TYPE_7__ {TYPE_2__ pd_table; } ;
struct i40iw_hmc_sd_entry {TYPE_3__ u; } ;
struct i40iw_hmc_pd_entry {int valid; } ;
struct i40iw_hmc_pble_rsrc {int next_fpm_addr; } ;
struct i40iw_hmc_info {int dummy; } ;
struct i40iw_dma_mem {void* va; int size; int pa; } ;
struct i40iw_chunk {int fpm_addr; int * dmaaddrs; int * vaddr; } ;
struct TYPE_8__ {size_t rel_pd_idx; size_t pd_idx; int sd_idx; } ;
struct i40iw_add_page_info {int pages; TYPE_4__ idx; struct i40iw_chunk* chunk; struct i40iw_hmc_info* hmc_info; struct i40iw_hmc_sd_entry* sd_entry; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40IW_ERR_NO_MEMORY ;
 int I40IW_HMC_DIRECT_BP_SIZE ;
 int I40IW_HMC_IW_PBLE ;
 int I40IW_SD_TYPE_PAGED ;
 int PAGE_SIZE ;
 int PBLE_512_SHIFT ;
 int PBLE_PER_PAGE ;
 int fpm_to_idx (struct i40iw_hmc_pble_rsrc*,int ) ;
 int i40iw_add_pd_table_entry (int ,struct i40iw_hmc_info*,int ,struct i40iw_dma_mem*) ;
 int i40iw_add_sd_table_entry (int ,struct i40iw_hmc_info*,int ,int ,int ) ;
 int i40iw_free_vmalloc_mem (int ,struct i40iw_chunk*) ;
 int i40iw_get_vmalloc_mem (int ,struct i40iw_chunk*,int) ;
 int i40iw_hw_manage_vf_pble_bp (int ,struct i40iw_manage_vf_pble_info*,int) ;
 int i40iw_pr_err (char*,...) ;
 int i40iw_vchnl_vf_add_hmc_objs (struct i40iw_sc_dev*,int ,int ,int) ;

__attribute__((used)) static enum i40iw_status_code add_bp_pages(struct i40iw_sc_dev *dev,
        struct i40iw_hmc_pble_rsrc *pble_rsrc,
        struct i40iw_add_page_info *info)
{
 u8 *addr;
 struct i40iw_dma_mem mem;
 struct i40iw_hmc_pd_entry *pd_entry;
 struct i40iw_hmc_sd_entry *sd_entry = info->sd_entry;
 struct i40iw_hmc_info *hmc_info = info->hmc_info;
 struct i40iw_chunk *chunk = info->chunk;
 struct i40iw_manage_vf_pble_info vf_pble_info;
 enum i40iw_status_code status = 0;
 u32 rel_pd_idx = info->idx.rel_pd_idx;
 u32 pd_idx = info->idx.pd_idx;
 u32 i;

 status = i40iw_get_vmalloc_mem(dev->hw, chunk, info->pages);
 if (status)
  return I40IW_ERR_NO_MEMORY;
 status = i40iw_add_sd_table_entry(dev->hw, hmc_info,
       info->idx.sd_idx, I40IW_SD_TYPE_PAGED,
       I40IW_HMC_DIRECT_BP_SIZE);
 if (status)
  goto error;
 if (!dev->is_pf) {
  status = i40iw_vchnl_vf_add_hmc_objs(dev, I40IW_HMC_IW_PBLE,
           fpm_to_idx(pble_rsrc,
        pble_rsrc->next_fpm_addr),
           (info->pages << PBLE_512_SHIFT));
  if (status) {
   i40iw_pr_err("allocate PBLEs in the PF.  Error %i\n", status);
   goto error;
  }
 }
 addr = chunk->vaddr;
 for (i = 0; i < info->pages; i++) {
  mem.pa = chunk->dmaaddrs[i];
  mem.size = PAGE_SIZE;
  mem.va = (void *)(addr);
  pd_entry = &sd_entry->u.pd_table.pd_entry[rel_pd_idx++];
  if (!pd_entry->valid) {
   status = i40iw_add_pd_table_entry(dev->hw, hmc_info, pd_idx++, &mem);
   if (status)
    goto error;
   addr += PAGE_SIZE;
  } else {
   i40iw_pr_err("pd entry is valid expecting to be invalid\n");
  }
 }
 if (!dev->is_pf) {
  vf_pble_info.first_pd_index = info->idx.rel_pd_idx;
  vf_pble_info.inv_pd_ent = 0;
  vf_pble_info.pd_entry_cnt = PBLE_PER_PAGE;
  vf_pble_info.pd_pl_pba = sd_entry->u.pd_table.pd_page_addr.pa;
  vf_pble_info.sd_index = info->idx.sd_idx;
  status = i40iw_hw_manage_vf_pble_bp(dev->back_dev,
          &vf_pble_info, 1);
  if (status) {
   i40iw_pr_err("CQP manage VF PBLE BP failed.  %i\n", status);
   goto error;
  }
 }
 chunk->fpm_addr = pble_rsrc->next_fpm_addr;
 return 0;
error:
 i40iw_free_vmalloc_mem(dev->hw, chunk);
 return status;
}
