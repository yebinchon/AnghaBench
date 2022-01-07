
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dev; } ;
struct ocrdma_pbl {int dummy; } ;
struct ocrdma_hw_mr {int num_pbls; TYPE_2__* pbl_table; int pbl_size; } ;
struct TYPE_3__ {struct pci_dev* pdev; } ;
struct ocrdma_dev {TYPE_1__ nic_info; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int pa; void* va; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* dma_alloc_coherent (int *,int ,int *,int ) ;
 TYPE_2__* kcalloc (int,int,int ) ;
 int ocrdma_free_mr_pbl_tbl (struct ocrdma_dev*,struct ocrdma_hw_mr*) ;

__attribute__((used)) static int ocrdma_build_pbl_tbl(struct ocrdma_dev *dev, struct ocrdma_hw_mr *mr)
{
 int status = 0;
 int i;
 u32 dma_len = mr->pbl_size;
 struct pci_dev *pdev = dev->nic_info.pdev;
 void *va;
 dma_addr_t pa;

 mr->pbl_table = kcalloc(mr->num_pbls, sizeof(struct ocrdma_pbl),
    GFP_KERNEL);

 if (!mr->pbl_table)
  return -ENOMEM;

 for (i = 0; i < mr->num_pbls; i++) {
  va = dma_alloc_coherent(&pdev->dev, dma_len, &pa, GFP_KERNEL);
  if (!va) {
   ocrdma_free_mr_pbl_tbl(dev, mr);
   status = -ENOMEM;
   break;
  }
  mr->pbl_table[i].va = va;
  mr->pbl_table[i].pa = pa;
 }
 return status;
}
