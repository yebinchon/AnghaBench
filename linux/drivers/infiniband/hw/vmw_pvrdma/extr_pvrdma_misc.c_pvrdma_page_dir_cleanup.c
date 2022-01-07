
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvrdma_page_dir {int dir_dma; scalar_t__ dir; } ;
struct pvrdma_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int PAGE_SIZE ;
 int dma_free_coherent (int *,int ,scalar_t__,int ) ;
 int pvrdma_page_dir_cleanup_tables (struct pvrdma_dev*,struct pvrdma_page_dir*) ;

void pvrdma_page_dir_cleanup(struct pvrdma_dev *dev,
        struct pvrdma_page_dir *pdir)
{
 if (pdir->dir) {
  pvrdma_page_dir_cleanup_tables(dev, pdir);
  dma_free_coherent(&dev->pdev->dev, PAGE_SIZE,
      pdir->dir, pdir->dir_dma);
 }
}
