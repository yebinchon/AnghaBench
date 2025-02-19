
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct i40iw_sc_dev {TYPE_3__* hmc_info; int hmc_fn_id; int cqp; TYPE_2__* cqp_misc_ops; } ;
struct i40iw_hmc_create_obj_info {int is_pf; size_t rsrc_type; scalar_t__ add_sd_cnt; int count; int entry_type; TYPE_3__* hmc_info; } ;
struct i40iw_device {int sd_type; struct i40iw_sc_dev sc_dev; } ;
typedef int info ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_6__ {TYPE_1__* hmc_obj; } ;
struct TYPE_5__ {int (* static_hmc_pages_allocated ) (int ,int ,int ,int,int) ;} ;
struct TYPE_4__ {int cnt; } ;


 int IW_HMC_OBJ_TYPE_NUM ;
 int i40iw_close_hmc_objects_type (struct i40iw_sc_dev*,size_t,TYPE_3__*,int,int) ;
 int i40iw_create_hmc_obj_type (struct i40iw_sc_dev*,struct i40iw_hmc_create_obj_info*) ;
 int i40iw_pr_err (char*,size_t,int) ;
 size_t* iw_hmc_obj_types ;
 int memset (struct i40iw_hmc_create_obj_info*,int ,int) ;
 int stub1 (int ,int ,int ,int,int) ;

__attribute__((used)) static enum i40iw_status_code i40iw_create_hmc_objs(struct i40iw_device *iwdev,
          bool is_pf)
{
 struct i40iw_sc_dev *dev = &iwdev->sc_dev;
 struct i40iw_hmc_create_obj_info info;
 enum i40iw_status_code status;
 int i;

 memset(&info, 0, sizeof(info));
 info.hmc_info = dev->hmc_info;
 info.is_pf = is_pf;
 info.entry_type = iwdev->sd_type;
 for (i = 0; i < IW_HMC_OBJ_TYPE_NUM; i++) {
  info.rsrc_type = iw_hmc_obj_types[i];
  info.count = dev->hmc_info->hmc_obj[info.rsrc_type].cnt;
  info.add_sd_cnt = 0;
  status = i40iw_create_hmc_obj_type(dev, &info);
  if (status) {
   i40iw_pr_err("create obj type %d status = %d\n",
         iw_hmc_obj_types[i], status);
   break;
  }
 }
 if (!status)
  return (dev->cqp_misc_ops->static_hmc_pages_allocated(dev->cqp, 0,
              dev->hmc_fn_id,
              1, 1));

 while (i) {
  i--;

  i40iw_close_hmc_objects_type(dev,
          iw_hmc_obj_types[i],
          dev->hmc_info,
          is_pf,
          0);
 }
 return status;
}
