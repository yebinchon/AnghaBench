
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef size_t u16 ;
struct i40iw_vfdev {scalar_t__ pmf_index; } ;
struct i40iw_sc_dev {struct i40iw_vfdev** vf_dev; } ;


 size_t I40IW_MAX_PE_ENABLED_VF_COUNT ;

struct i40iw_vfdev *i40iw_vfdev_from_fpm(struct i40iw_sc_dev *dev, u8 hmc_fn_id)
{
 struct i40iw_vfdev *vf_dev = ((void*)0);
 u16 idx;

 for (idx = 0; idx < I40IW_MAX_PE_ENABLED_VF_COUNT; idx++) {
  if (dev->vf_dev[idx] &&
      ((u8)dev->vf_dev[idx]->pmf_index == hmc_fn_id)) {
   vf_dev = dev->vf_dev[idx];
   break;
  }
 }
 return vf_dev;
}
