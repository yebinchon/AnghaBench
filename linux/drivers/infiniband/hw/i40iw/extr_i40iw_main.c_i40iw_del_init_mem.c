
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i40iw_sc_dev {TYPE_2__* hmc_info; } ;
struct i40iw_device {int * hmc_info_mem; int * iw_msixtbl; int * ceqlist; int * mem_resources; int obj_mem; int hw; struct i40iw_sc_dev sc_dev; } ;
struct TYPE_3__ {int * sd_entry; } ;
struct TYPE_4__ {TYPE_1__ sd_table; } ;


 int i40iw_free_dma_mem (int *,int *) ;
 int kfree (int *) ;

__attribute__((used)) static void i40iw_del_init_mem(struct i40iw_device *iwdev)
{
 struct i40iw_sc_dev *dev = &iwdev->sc_dev;

 i40iw_free_dma_mem(&iwdev->hw, &iwdev->obj_mem);
 kfree(dev->hmc_info->sd_table.sd_entry);
 dev->hmc_info->sd_table.sd_entry = ((void*)0);
 kfree(iwdev->mem_resources);
 iwdev->mem_resources = ((void*)0);
 kfree(iwdev->ceqlist);
 iwdev->ceqlist = ((void*)0);
 kfree(iwdev->iw_msixtbl);
 iwdev->iw_msixtbl = ((void*)0);
 kfree(iwdev->hmc_info_mem);
 iwdev->hmc_info_mem = ((void*)0);
}
