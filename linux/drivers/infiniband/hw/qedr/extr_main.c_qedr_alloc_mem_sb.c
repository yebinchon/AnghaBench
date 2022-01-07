
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct status_block_e4 {int dummy; } ;
struct qedr_dev {TYPE_1__* pdev; int cdev; TYPE_3__* ops; } ;
struct qed_sb_info {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_6__ {TYPE_2__* common; } ;
struct TYPE_5__ {int (* sb_init ) (int ,struct qed_sb_info*,struct status_block_e4*,int ,int ,int ) ;} ;
struct TYPE_4__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int QED_SB_TYPE_CNQ ;
 struct status_block_e4* dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,struct status_block_e4*,int ) ;
 int pr_err (char*) ;
 int stub1 (int ,struct qed_sb_info*,struct status_block_e4*,int ,int ,int ) ;

__attribute__((used)) static int qedr_alloc_mem_sb(struct qedr_dev *dev,
        struct qed_sb_info *sb_info, u16 sb_id)
{
 struct status_block_e4 *sb_virt;
 dma_addr_t sb_phys;
 int rc;

 sb_virt = dma_alloc_coherent(&dev->pdev->dev,
         sizeof(*sb_virt), &sb_phys, GFP_KERNEL);
 if (!sb_virt)
  return -ENOMEM;

 rc = dev->ops->common->sb_init(dev->cdev, sb_info,
           sb_virt, sb_phys, sb_id,
           QED_SB_TYPE_CNQ);
 if (rc) {
  pr_err("Status block initialization failed\n");
  dma_free_coherent(&dev->pdev->dev, sizeof(*sb_virt),
      sb_virt, sb_phys);
  return rc;
 }

 return 0;
}
