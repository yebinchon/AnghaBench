
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mthca_user_db_table {TYPE_1__* page; int mutex; } ;
struct TYPE_4__ {int uarc_size; } ;
struct mthca_dev {TYPE_2__ uar_table; } ;
struct TYPE_3__ {int mem; scalar_t__ uvirt; scalar_t__ refcount; } ;


 int ENOMEM ;
 struct mthca_user_db_table* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int MTHCA_ICM_PAGE_SIZE ;
 struct mthca_user_db_table* kmalloc (int ,int ) ;
 int mthca_is_memfree (struct mthca_dev*) ;
 int mutex_init (int *) ;
 int page ;
 int sg_init_table (int *,int) ;
 int struct_size (struct mthca_user_db_table*,int ,int) ;

struct mthca_user_db_table *mthca_init_user_db_tab(struct mthca_dev *dev)
{
 struct mthca_user_db_table *db_tab;
 int npages;
 int i;

 if (!mthca_is_memfree(dev))
  return ((void*)0);

 npages = dev->uar_table.uarc_size / MTHCA_ICM_PAGE_SIZE;
 db_tab = kmalloc(struct_size(db_tab, page, npages), GFP_KERNEL);
 if (!db_tab)
  return ERR_PTR(-ENOMEM);

 mutex_init(&db_tab->mutex);
 for (i = 0; i < npages; ++i) {
  db_tab->page[i].refcount = 0;
  db_tab->page[i].uvirt = 0;
  sg_init_table(&db_tab->page[i].mem, 1);
 }

 return db_tab;
}
