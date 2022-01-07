
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnxt_qplib_rcfw {unsigned long bmap_size; scalar_t__ vector; int * aeq_handler; int * creq_bar_reg_iomem; int * cmdq_bar_reg_iomem; int cmdq_bitmap; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int bnxt_qplib_rcfw_stop_irq (struct bnxt_qplib_rcfw*,int) ;
 int dev_err (int *,char*,unsigned long) ;
 unsigned long find_first_bit (int ,unsigned long) ;
 int iounmap (int *) ;
 int kfree (int ) ;

void bnxt_qplib_disable_rcfw_channel(struct bnxt_qplib_rcfw *rcfw)
{
 unsigned long indx;

 bnxt_qplib_rcfw_stop_irq(rcfw, 1);

 iounmap(rcfw->cmdq_bar_reg_iomem);
 iounmap(rcfw->creq_bar_reg_iomem);

 indx = find_first_bit(rcfw->cmdq_bitmap, rcfw->bmap_size);
 if (indx != rcfw->bmap_size)
  dev_err(&rcfw->pdev->dev,
   "disabling RCFW with pending cmd-bit %lx\n", indx);
 kfree(rcfw->cmdq_bitmap);
 rcfw->bmap_size = 0;

 rcfw->cmdq_bar_reg_iomem = ((void*)0);
 rcfw->creq_bar_reg_iomem = ((void*)0);
 rcfw->aeq_handler = ((void*)0);
 rcfw->vector = 0;
}
