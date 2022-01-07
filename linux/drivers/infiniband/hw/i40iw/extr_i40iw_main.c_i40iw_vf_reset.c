
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct i40iw_virt_mem {int size; struct i40iw_vfdev* va; } ;
struct i40iw_vfdev {scalar_t__ vf_id; int iw_vf_idx; int hmc_info; } ;
struct i40iw_sc_dev {int hw; struct i40iw_vfdev** vf_dev; scalar_t__ back_dev; } ;
struct i40iw_hmc_obj_info {int dummy; } ;
struct i40iw_hmc_fcn_info {int free_fcn; int iw_vf_idx; scalar_t__ vf_id; } ;
struct TYPE_4__ {struct i40iw_sc_dev sc_dev; } ;
struct i40iw_handler {TYPE_1__ device; } ;
struct TYPE_6__ {TYPE_2__* pestat; } ;
struct i40iw_device {TYPE_3__ vsi; } ;
struct i40e_info {int dummy; } ;
struct i40e_client {int dummy; } ;
typedef int hmc_fcn_info ;
struct TYPE_5__ {int lock; } ;


 int I40IW_HMC_IW_MAX ;
 unsigned int I40IW_MAX_PE_ENABLED_VF_COUNT ;
 int i40iw_cqp_manage_hmc_fcn_cmd (struct i40iw_sc_dev*,struct i40iw_hmc_fcn_info*) ;
 int i40iw_del_hmc_objects (struct i40iw_sc_dev*,int *,int,int) ;
 struct i40iw_handler* i40iw_find_i40e_handler (struct i40e_info*) ;
 int i40iw_free_virt_mem (int ,struct i40iw_virt_mem*) ;
 int memset (struct i40iw_hmc_fcn_info*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void i40iw_vf_reset(struct i40e_info *ldev, struct i40e_client *client, u32 vf_id)
{
 struct i40iw_handler *hdl;
 struct i40iw_sc_dev *dev;
 struct i40iw_hmc_fcn_info hmc_fcn_info;
 struct i40iw_virt_mem vf_dev_mem;
 struct i40iw_vfdev *tmp_vfdev;
 unsigned int i;
 unsigned long flags;
 struct i40iw_device *iwdev;

 hdl = i40iw_find_i40e_handler(ldev);
 if (!hdl)
  return;

 dev = &hdl->device.sc_dev;
 iwdev = (struct i40iw_device *)dev->back_dev;

 for (i = 0; i < I40IW_MAX_PE_ENABLED_VF_COUNT; i++) {
  if (!dev->vf_dev[i] || (dev->vf_dev[i]->vf_id != vf_id))
   continue;

  tmp_vfdev = dev->vf_dev[i];
  spin_lock_irqsave(&iwdev->vsi.pestat->lock, flags);
  dev->vf_dev[i] = ((void*)0);
  spin_unlock_irqrestore(&iwdev->vsi.pestat->lock, flags);
  i40iw_del_hmc_objects(dev, &tmp_vfdev->hmc_info, 0, 0);

  memset(&hmc_fcn_info, 0, sizeof(hmc_fcn_info));
  hmc_fcn_info.vf_id = vf_id;
  hmc_fcn_info.iw_vf_idx = tmp_vfdev->iw_vf_idx;
  hmc_fcn_info.free_fcn = 1;
  i40iw_cqp_manage_hmc_fcn_cmd(dev, &hmc_fcn_info);

  vf_dev_mem.va = tmp_vfdev;
  vf_dev_mem.size = sizeof(struct i40iw_vfdev) +
     sizeof(struct i40iw_hmc_obj_info) * I40IW_HMC_IW_MAX;
  i40iw_free_virt_mem(dev->hw, &vf_dev_mem);
  break;
 }
}
