
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct pvrdma_page_dir {int ntables; int ** tables; int * dir; } ;
struct pvrdma_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int PAGE_SIZE ;
 int dma_free_coherent (int *,int ,int *,int ) ;
 int kfree (int **) ;
 int pvrdma_page_dir_cleanup_pages (struct pvrdma_dev*,struct pvrdma_page_dir*) ;

__attribute__((used)) static void pvrdma_page_dir_cleanup_tables(struct pvrdma_dev *dev,
        struct pvrdma_page_dir *pdir)
{
 if (pdir->tables) {
  int i;

  pvrdma_page_dir_cleanup_pages(dev, pdir);

  for (i = 0; i < pdir->ntables; i++) {
   u64 *table = pdir->tables[i];

   if (table)
    dma_free_coherent(&dev->pdev->dev, PAGE_SIZE,
        table, pdir->dir[i]);
  }

  kfree(pdir->tables);
 }
}
