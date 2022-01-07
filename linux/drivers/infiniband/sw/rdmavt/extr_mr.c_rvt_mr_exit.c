
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int table; } ;
struct rvt_dev_info {TYPE_1__ lkey_table; scalar_t__ dma_mr; } ;


 int rvt_pr_err (struct rvt_dev_info*,char*) ;
 int vfree (int ) ;

void rvt_mr_exit(struct rvt_dev_info *rdi)
{
 if (rdi->dma_mr)
  rvt_pr_err(rdi, "DMA MR not null!\n");

 vfree(rdi->lkey_table.table);
}
