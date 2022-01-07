
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i40iw_sc_dev {TYPE_1__* hmc_ops; } ;
struct i40iw_hmc_info {TYPE_2__* hmc_obj; } ;
struct i40iw_hmc_del_obj_info {int rsrc_type; int is_pf; int count; struct i40iw_hmc_info* hmc_info; } ;
typedef int info ;
typedef enum i40iw_hmc_rsrc_type { ____Placeholder_i40iw_hmc_rsrc_type } i40iw_hmc_rsrc_type ;
struct TYPE_4__ {int cnt; } ;
struct TYPE_3__ {scalar_t__ (* del_hmc_object ) (struct i40iw_sc_dev*,struct i40iw_hmc_del_obj_info*,int) ;} ;


 int i40iw_pr_err (char*,int) ;
 int memset (struct i40iw_hmc_del_obj_info*,int ,int) ;
 scalar_t__ stub1 (struct i40iw_sc_dev*,struct i40iw_hmc_del_obj_info*,int) ;

__attribute__((used)) static void i40iw_close_hmc_objects_type(struct i40iw_sc_dev *dev,
      enum i40iw_hmc_rsrc_type obj_type,
      struct i40iw_hmc_info *hmc_info,
      bool is_pf,
      bool reset)
{
 struct i40iw_hmc_del_obj_info info;

 memset(&info, 0, sizeof(info));
 info.hmc_info = hmc_info;
 info.rsrc_type = obj_type;
 info.count = hmc_info->hmc_obj[obj_type].cnt;
 info.is_pf = is_pf;
 if (dev->hmc_ops->del_hmc_object(dev, &info, reset))
  i40iw_pr_err("del obj of type %d failed\n", obj_type);
}
