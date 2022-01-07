
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stats_mem {int debugfs_mem; int * va; int pa; int size; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct ocrdma_dev {TYPE_2__ nic_info; struct stats_mem stats_mem; } ;
struct TYPE_3__ {int dev; } ;


 int dma_free_coherent (int *,int ,int *,int ) ;
 int kfree (int ) ;

void ocrdma_release_stats_resources(struct ocrdma_dev *dev)
{
 struct stats_mem *mem = &dev->stats_mem;

 if (mem->va)
  dma_free_coherent(&dev->nic_info.pdev->dev, mem->size,
      mem->va, mem->pa);
 mem->va = ((void*)0);
 kfree(mem->debugfs_mem);
}
