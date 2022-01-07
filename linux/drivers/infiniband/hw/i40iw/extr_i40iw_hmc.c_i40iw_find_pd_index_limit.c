
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u64 ;
typedef size_t u32 ;
struct i40iw_hmc_info {TYPE_1__* hmc_obj; } ;
struct TYPE_2__ {size_t base; size_t size; } ;


 size_t I40IW_HMC_PAGED_BP_SIZE ;

__attribute__((used)) static inline void i40iw_find_pd_index_limit(struct i40iw_hmc_info *hmc_info,
          u32 type,
          u32 idx,
          u32 cnt,
          u32 *pd_idx,
          u32 *pd_limit)
{
 u64 fpm_adr, fpm_limit;

 fpm_adr = hmc_info->hmc_obj[type].base +
   hmc_info->hmc_obj[type].size * idx;
 fpm_limit = fpm_adr + (hmc_info)->hmc_obj[(type)].size * (cnt);
 *(pd_idx) = (u32)(fpm_adr / I40IW_HMC_PAGED_BP_SIZE);
 *(pd_limit) = (u32)((fpm_limit - 1) / I40IW_HMC_PAGED_BP_SIZE);
 *(pd_limit) += 1;
}
