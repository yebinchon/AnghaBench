
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct i40iw_update_sds_info {int cnt; int entry; int hmc_fn_id; } ;
struct i40iw_sc_dev {TYPE_1__* cqp; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
typedef enum i40iw_sd_entry_type { ____Placeholder_i40iw_sd_entry_type } i40iw_sd_entry_type ;
struct TYPE_2__ {int (* process_cqp_sds ) (struct i40iw_sc_dev*,struct i40iw_update_sds_info*) ;} ;


 int i40iw_clr_sd_entry (int ,int,int ) ;
 int i40iw_set_sd_entry (int ,int ,int,int ) ;
 int stub1 (struct i40iw_sc_dev*,struct i40iw_update_sds_info*) ;

enum i40iw_status_code i40iw_hmc_sd_one(struct i40iw_sc_dev *dev,
     u8 hmc_fn_id,
     u64 pa, u32 sd_idx,
     enum i40iw_sd_entry_type type,
     bool setsd)
{
 struct i40iw_update_sds_info sdinfo;

 sdinfo.cnt = 1;
 sdinfo.hmc_fn_id = hmc_fn_id;
 if (setsd)
  i40iw_set_sd_entry(pa, sd_idx, type, sdinfo.entry);
 else
  i40iw_clr_sd_entry(sd_idx, type, sdinfo.entry);

 return dev->cqp->process_cqp_sds(dev, &sdinfo);
}
