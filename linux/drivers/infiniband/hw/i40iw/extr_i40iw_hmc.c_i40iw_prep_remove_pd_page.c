
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_4__ {scalar_t__ ref_cnt; } ;
struct TYPE_5__ {TYPE_1__ pd_table; } ;
struct i40iw_hmc_sd_entry {int valid; TYPE_2__ u; } ;
struct TYPE_6__ {struct i40iw_hmc_sd_entry* sd_entry; } ;
struct i40iw_hmc_info {TYPE_3__ sd_table; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40IW_DEC_SD_REFCNT (TYPE_3__*) ;
 int I40IW_ERR_NOT_READY ;

enum i40iw_status_code i40iw_prep_remove_pd_page(struct i40iw_hmc_info *hmc_info,
       u32 idx)
{
 struct i40iw_hmc_sd_entry *sd_entry;

 sd_entry = &hmc_info->sd_table.sd_entry[idx];

 if (sd_entry->u.pd_table.ref_cnt)
  return I40IW_ERR_NOT_READY;

 sd_entry->valid = 0;
 I40IW_DEC_SD_REFCNT(&hmc_info->sd_table);

 return 0;
}
