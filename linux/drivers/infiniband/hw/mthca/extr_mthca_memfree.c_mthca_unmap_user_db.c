
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mthca_user_db_table {int mutex; TYPE_1__* page; } ;
struct mthca_uar {int dummy; } ;
struct mthca_dev {int dummy; } ;
struct TYPE_2__ {int refcount; } ;


 int MTHCA_DB_REC_PER_PAGE ;
 int mthca_is_memfree (struct mthca_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void mthca_unmap_user_db(struct mthca_dev *dev, struct mthca_uar *uar,
    struct mthca_user_db_table *db_tab, int index)
{
 if (!mthca_is_memfree(dev))
  return;






 mutex_lock(&db_tab->mutex);

 --db_tab->page[index / MTHCA_DB_REC_PER_PAGE].refcount;

 mutex_unlock(&db_tab->mutex);
}
