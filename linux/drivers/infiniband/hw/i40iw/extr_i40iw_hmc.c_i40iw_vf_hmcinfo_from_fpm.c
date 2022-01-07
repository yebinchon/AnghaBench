
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef size_t u16 ;
struct i40iw_sc_dev {TYPE_1__** vf_dev; } ;
struct i40iw_hmc_info {int dummy; } ;
struct TYPE_2__ {struct i40iw_hmc_info hmc_info; scalar_t__ pmf_index; } ;


 size_t I40IW_MAX_PE_ENABLED_VF_COUNT ;

struct i40iw_hmc_info *i40iw_vf_hmcinfo_from_fpm(struct i40iw_sc_dev *dev,
       u8 hmc_fn_id)
{
 struct i40iw_hmc_info *hmc_info = ((void*)0);
 u16 idx;

 for (idx = 0; idx < I40IW_MAX_PE_ENABLED_VF_COUNT; idx++) {
  if (dev->vf_dev[idx] &&
      ((u8)dev->vf_dev[idx]->pmf_index == hmc_fn_id)) {
   hmc_info = &dev->vf_dev[idx]->hmc_info;
   break;
  }
 }
 return hmc_info;
}
