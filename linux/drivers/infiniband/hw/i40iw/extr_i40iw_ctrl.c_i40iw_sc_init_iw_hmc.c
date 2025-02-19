
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef size_t u16 ;
struct i40iw_virt_mem {int va; } ;
struct TYPE_3__ {int sd_cnt; int sd_entry; } ;
struct i40iw_hmc_info {int first_sd_index; TYPE_1__ sd_table; int hmc_obj; int hmc_fn_id; } ;
struct i40iw_vfdev {size_t iw_vf_idx; scalar_t__ fpm_query_buf; int fpm_query_buf_pa; struct i40iw_hmc_info hmc_info; } ;
struct i40iw_sc_dev {int hw; int hmc_fn_id; int hmc_fpm_misc; int cqp; TYPE_2__* vf_fpm_query_buf; scalar_t__ fpm_query_buf; int fpm_query_buf_pa; struct i40iw_hmc_info* hmc_info; } ;
struct i40iw_hmc_sd_entry {int dummy; } ;
struct i40iw_dma_mem {scalar_t__ va; int pa; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_4__ {int pa; scalar_t__ va; } ;


 scalar_t__ I40IW_CQP_WAIT_POLL_CQ ;
 scalar_t__ I40IW_CQP_WAIT_POLL_REGS ;
 int I40IW_DEBUG_HMC ;
 int I40IW_ERR_INVALID_HMCFN_ID ;
 int I40IW_ERR_INVALID_VF_ID ;
 int I40IW_FIRST_VF_FPM_ID ;
 int I40IW_MAX_VF_FPM_ID ;
 int I40IW_QUERY_FPM_BUF_SIZE ;
 int i40iw_alloc_query_fpm_buf (struct i40iw_sc_dev*,TYPE_2__*) ;
 int i40iw_allocate_virt_mem (int ,struct i40iw_virt_mem*,int) ;
 int i40iw_cqp_commit_fpm_values_cmd (struct i40iw_sc_dev*,struct i40iw_dma_mem*,int ) ;
 int i40iw_cqp_query_fpm_values_cmd (struct i40iw_sc_dev*,struct i40iw_dma_mem*,int ) ;
 int i40iw_debug (struct i40iw_sc_dev*,int ,char*,struct i40iw_vfdev*,struct i40iw_hmc_info*,...) ;
 int i40iw_debug_buf (struct i40iw_sc_dev*,int ,char*,scalar_t__,int ) ;
 int i40iw_sc_parse_fpm_commit_buf (int *,int ,int*) ;
 int i40iw_sc_parse_fpm_query_buf (int *,struct i40iw_hmc_info*,int *) ;
 int i40iw_sc_query_fpm_values (int ,int ,int ,struct i40iw_dma_mem*,int,int ) ;
 struct i40iw_vfdev* i40iw_vfdev_from_fpm (struct i40iw_sc_dev*,int ) ;

enum i40iw_status_code i40iw_sc_init_iw_hmc(struct i40iw_sc_dev *dev, u8 hmc_fn_id)
{
 struct i40iw_hmc_info *hmc_info;
 struct i40iw_dma_mem query_fpm_mem;
 struct i40iw_virt_mem virt_mem;
 struct i40iw_vfdev *vf_dev = ((void*)0);
 u32 mem_size;
 enum i40iw_status_code ret_code = 0;
 bool poll_registers = 1;
 u16 iw_vf_idx;
 u8 wait_type;

 if (hmc_fn_id >= I40IW_MAX_VF_FPM_ID ||
     (dev->hmc_fn_id != hmc_fn_id && hmc_fn_id < I40IW_FIRST_VF_FPM_ID))
  return I40IW_ERR_INVALID_HMCFN_ID;

 i40iw_debug(dev, I40IW_DEBUG_HMC, "hmc_fn_id %u, dev->hmc_fn_id %u\n", hmc_fn_id,
      dev->hmc_fn_id);
 if (hmc_fn_id == dev->hmc_fn_id) {
  hmc_info = dev->hmc_info;
  query_fpm_mem.pa = dev->fpm_query_buf_pa;
  query_fpm_mem.va = dev->fpm_query_buf;
 } else {
  vf_dev = i40iw_vfdev_from_fpm(dev, hmc_fn_id);
  if (!vf_dev)
   return I40IW_ERR_INVALID_VF_ID;

  hmc_info = &vf_dev->hmc_info;
  iw_vf_idx = vf_dev->iw_vf_idx;
  i40iw_debug(dev, I40IW_DEBUG_HMC, "vf_dev %p, hmc_info %p, hmc_obj %p\n", vf_dev,
       hmc_info, hmc_info->hmc_obj);
  if (!vf_dev->fpm_query_buf) {
   if (!dev->vf_fpm_query_buf[iw_vf_idx].va) {
    ret_code = i40iw_alloc_query_fpm_buf(dev,
             &dev->vf_fpm_query_buf[iw_vf_idx]);
    if (ret_code)
     return ret_code;
   }
   vf_dev->fpm_query_buf = dev->vf_fpm_query_buf[iw_vf_idx].va;
   vf_dev->fpm_query_buf_pa = dev->vf_fpm_query_buf[iw_vf_idx].pa;
  }
  query_fpm_mem.pa = vf_dev->fpm_query_buf_pa;
  query_fpm_mem.va = vf_dev->fpm_query_buf;






  poll_registers = 0;
 }

 hmc_info->hmc_fn_id = hmc_fn_id;

 if (hmc_fn_id != dev->hmc_fn_id) {
  ret_code =
   i40iw_cqp_query_fpm_values_cmd(dev, &query_fpm_mem, hmc_fn_id);
 } else {
  wait_type = poll_registers ? (u8)I40IW_CQP_WAIT_POLL_REGS :
       (u8)I40IW_CQP_WAIT_POLL_CQ;

  ret_code = i40iw_sc_query_fpm_values(
     dev->cqp,
     0,
     hmc_info->hmc_fn_id,
     &query_fpm_mem,
     1,
     wait_type);
 }
 if (ret_code)
  return ret_code;


 ret_code =
  i40iw_sc_parse_fpm_query_buf((u64 *)query_fpm_mem.va,
          hmc_info,
          &dev->hmc_fpm_misc);
 if (ret_code)
  return ret_code;
 i40iw_debug_buf(dev, I40IW_DEBUG_HMC, "QUERY FPM BUFFER",
   query_fpm_mem.va, I40IW_QUERY_FPM_BUF_SIZE);

 if (hmc_fn_id != dev->hmc_fn_id) {
  i40iw_cqp_commit_fpm_values_cmd(dev, &query_fpm_mem, hmc_fn_id);


  i40iw_sc_parse_fpm_commit_buf((u64 *)query_fpm_mem.va, hmc_info->hmc_obj, &hmc_info->sd_table.sd_cnt);
  mem_size = sizeof(struct i40iw_hmc_sd_entry) *
      (hmc_info->sd_table.sd_cnt + hmc_info->first_sd_index);
  ret_code = i40iw_allocate_virt_mem(dev->hw, &virt_mem, mem_size);
  if (ret_code)
   return ret_code;
  hmc_info->sd_table.sd_entry = virt_mem.va;
 }

 return ret_code;
}
