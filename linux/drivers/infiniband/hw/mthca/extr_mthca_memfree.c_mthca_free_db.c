
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mthca_dev {TYPE_2__* db_tab; TYPE_1__* pdev; int driver_uar; } ;
struct mthca_db_page {scalar_t__* db_rec; int mapping; int used; } ;
struct TYPE_4__ {int min_group2; int max_group1; int mutex; struct mthca_db_page* page; } ;
struct TYPE_3__ {int dev; } ;


 int MTHCA_DB_REC_PER_PAGE ;
 int MTHCA_ICM_PAGE_SIZE ;
 scalar_t__ bitmap_empty (int ,int) ;
 int clear_bit (int,int ) ;
 int dma_free_coherent (int *,int ,scalar_t__*,int ) ;
 int mthca_UNMAP_ICM (struct mthca_dev*,int ,int) ;
 int mthca_uarc_virt (struct mthca_dev*,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void mthca_free_db(struct mthca_dev *dev, int type, int db_index)
{
 int i, j;
 struct mthca_db_page *page;

 i = db_index / MTHCA_DB_REC_PER_PAGE;
 j = db_index % MTHCA_DB_REC_PER_PAGE;

 page = dev->db_tab->page + i;

 mutex_lock(&dev->db_tab->mutex);

 page->db_rec[j] = 0;
 if (i >= dev->db_tab->min_group2)
  j = MTHCA_DB_REC_PER_PAGE - 1 - j;
 clear_bit(j, page->used);

 if (bitmap_empty(page->used, MTHCA_DB_REC_PER_PAGE) &&
     i >= dev->db_tab->max_group1 - 1) {
  mthca_UNMAP_ICM(dev, mthca_uarc_virt(dev, &dev->driver_uar, i), 1);

  dma_free_coherent(&dev->pdev->dev, MTHCA_ICM_PAGE_SIZE,
      page->db_rec, page->mapping);
  page->db_rec = ((void*)0);

  if (i == dev->db_tab->max_group1) {
   --dev->db_tab->max_group1;

  }
  if (i == dev->db_tab->min_group2)
   ++dev->db_tab->min_group2;
 }

 mutex_unlock(&dev->db_tab->mutex);
}
