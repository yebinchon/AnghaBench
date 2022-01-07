
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_sc_dev {int dummy; } ;
struct i40iw_hmc_info {int dummy; } ;


 unsigned int IW_HMC_OBJ_TYPE_NUM ;
 int i40iw_close_hmc_objects_type (struct i40iw_sc_dev*,int ,struct i40iw_hmc_info*,int,int) ;
 int * iw_hmc_obj_types ;

__attribute__((used)) static void i40iw_del_hmc_objects(struct i40iw_sc_dev *dev,
      struct i40iw_hmc_info *hmc_info,
      bool is_pf,
      bool reset)
{
 unsigned int i;

 for (i = 0; i < IW_HMC_OBJ_TYPE_NUM; i++)
  i40iw_close_hmc_objects_type(dev, iw_hmc_obj_types[i], hmc_info, is_pf, reset);
}
