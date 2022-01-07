
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mthca_dev {TYPE_2__* db_tab; TYPE_1__* pdev; int driver_uar; } ;
struct mthca_db_page {int * db_rec; int used; int mapping; } ;
typedef enum mthca_db_type { ____Placeholder_mthca_db_type } mthca_db_type ;
typedef int __be32 ;
struct TYPE_4__ {int max_group1; int min_group2; int mutex; struct mthca_db_page* page; int npages; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MTHCA_DB_REC_PER_PAGE ;





 int MTHCA_ICM_PAGE_SIZE ;
 int bitmap_full (int ,int) ;
 int bitmap_zero (int ,int) ;
 int cpu_to_be64 (int) ;
 int * dma_alloc_coherent (int *,int ,int *,int ) ;
 int dma_free_coherent (int *,int ,int *,int ) ;
 int find_first_zero_bit (int ,int) ;
 int mthca_MAP_ICM_page (struct mthca_dev*,int ,int ) ;
 int mthca_uarc_virt (struct mthca_dev*,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int,int ) ;

int mthca_alloc_db(struct mthca_dev *dev, enum mthca_db_type type,
     u32 qn, __be32 **db)
{
 int group;
 int start, end, dir;
 int i, j;
 struct mthca_db_page *page;
 int ret = 0;

 mutex_lock(&dev->db_tab->mutex);

 switch (type) {
 case 132:
 case 129:
  group = 0;
  start = 0;
  end = dev->db_tab->max_group1;
  dir = 1;
  break;

 case 131:
 case 130:
 case 128:
  group = 1;
  start = dev->db_tab->npages - 1;
  end = dev->db_tab->min_group2;
  dir = -1;
  break;

 default:
  ret = -EINVAL;
  goto out;
 }

 for (i = start; i != end; i += dir)
  if (dev->db_tab->page[i].db_rec &&
      !bitmap_full(dev->db_tab->page[i].used,
     MTHCA_DB_REC_PER_PAGE)) {
   page = dev->db_tab->page + i;
   goto found;
  }

 for (i = start; i != end; i += dir)
  if (!dev->db_tab->page[i].db_rec) {
   page = dev->db_tab->page + i;
   goto alloc;
  }

 if (dev->db_tab->max_group1 >= dev->db_tab->min_group2 - 1) {
  ret = -ENOMEM;
  goto out;
 }

 if (group == 0)
  ++dev->db_tab->max_group1;
 else
  --dev->db_tab->min_group2;

 page = dev->db_tab->page + end;

alloc:
 page->db_rec = dma_alloc_coherent(&dev->pdev->dev,
       MTHCA_ICM_PAGE_SIZE, &page->mapping,
       GFP_KERNEL);
 if (!page->db_rec) {
  ret = -ENOMEM;
  goto out;
 }

 ret = mthca_MAP_ICM_page(dev, page->mapping,
     mthca_uarc_virt(dev, &dev->driver_uar, i));
 if (ret) {
  dma_free_coherent(&dev->pdev->dev, MTHCA_ICM_PAGE_SIZE,
      page->db_rec, page->mapping);
  goto out;
 }

 bitmap_zero(page->used, MTHCA_DB_REC_PER_PAGE);

found:
 j = find_first_zero_bit(page->used, MTHCA_DB_REC_PER_PAGE);
 set_bit(j, page->used);

 if (group == 1)
  j = MTHCA_DB_REC_PER_PAGE - 1 - j;

 ret = i * MTHCA_DB_REC_PER_PAGE + j;

 page->db_rec[j] = cpu_to_be64((qn << 8) | (type << 5));

 *db = (__be32 *) &page->db_rec[j];

out:
 mutex_unlock(&dev->db_tab->mutex);

 return ret;
}
