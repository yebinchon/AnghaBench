
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct i40iw_sc_dev {struct i40iw_hmc_info* hmc_info; } ;
struct TYPE_4__ {int pool; int clist; int pool_shift; } ;
struct i40iw_hmc_pble_rsrc {int fpm_base_addr; int next_fpm_addr; TYPE_2__ pinfo; scalar_t__ unallocated_pble; } ;
struct i40iw_hmc_info {TYPE_1__* hmc_obj; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_3__ {int base; scalar_t__ cnt; } ;


 int I40IW_ERR_NO_MEMORY ;
 size_t I40IW_HMC_IW_PBLE ;
 int INIT_LIST_HEAD (int *) ;
 int PAGE_SIZE ;
 int POOL_SHIFT ;
 scalar_t__ add_pble_pool (struct i40iw_sc_dev*,struct i40iw_hmc_pble_rsrc*) ;
 int gen_pool_create (int ,int) ;
 int i40iw_destroy_pble_pool (struct i40iw_sc_dev*,struct i40iw_hmc_pble_rsrc*) ;

enum i40iw_status_code i40iw_hmc_init_pble(struct i40iw_sc_dev *dev,
        struct i40iw_hmc_pble_rsrc *pble_rsrc)
{
 struct i40iw_hmc_info *hmc_info;
 u32 fpm_idx = 0;

 hmc_info = dev->hmc_info;
 pble_rsrc->fpm_base_addr = hmc_info->hmc_obj[I40IW_HMC_IW_PBLE].base;

 if (pble_rsrc->fpm_base_addr & 0xfff)
  fpm_idx = (PAGE_SIZE - (pble_rsrc->fpm_base_addr & 0xfff)) >> 3;

 pble_rsrc->unallocated_pble =
     hmc_info->hmc_obj[I40IW_HMC_IW_PBLE].cnt - fpm_idx;
 pble_rsrc->next_fpm_addr = pble_rsrc->fpm_base_addr + (fpm_idx << 3);

 pble_rsrc->pinfo.pool_shift = POOL_SHIFT;
 pble_rsrc->pinfo.pool = gen_pool_create(pble_rsrc->pinfo.pool_shift, -1);
 INIT_LIST_HEAD(&pble_rsrc->pinfo.clist);
 if (!pble_rsrc->pinfo.pool)
  goto error;

 if (add_pble_pool(dev, pble_rsrc))
  goto error;

 return 0;

 error:i40iw_destroy_pble_pool(dev, pble_rsrc);
 return I40IW_ERR_NO_MEMORY;
}
