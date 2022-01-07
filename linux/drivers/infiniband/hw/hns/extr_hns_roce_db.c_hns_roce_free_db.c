
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hns_roce_dev {int pgdir_mutex; int dev; } ;
struct TYPE_3__ {TYPE_2__* pgdir; } ;
struct hns_roce_db {int order; int index; TYPE_1__ u; } ;
struct TYPE_4__ {int list; int db_dma; int page; int order1; int * bits; int order0; } ;


 int HNS_ROCE_DB_PER_PAGE ;
 int HNS_ROCE_DB_TYPE_COUNT ;
 int PAGE_SIZE ;
 scalar_t__ bitmap_full (int ,int) ;
 int clear_bit (int,int ) ;
 int dma_free_coherent (int ,int ,int ,int ) ;
 int kfree (TYPE_2__*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int,int ) ;
 scalar_t__ test_bit (int,int ) ;

void hns_roce_free_db(struct hns_roce_dev *hr_dev, struct hns_roce_db *db)
{
 int o;
 int i;

 mutex_lock(&hr_dev->pgdir_mutex);

 o = db->order;
 i = db->index;

 if (db->order == 0 && test_bit(i ^ 1, db->u.pgdir->order0)) {
  clear_bit(i ^ 1, db->u.pgdir->order0);
  ++o;
 }

 i >>= o;
 set_bit(i, db->u.pgdir->bits[o]);

 if (bitmap_full(db->u.pgdir->order1,
   HNS_ROCE_DB_PER_PAGE / HNS_ROCE_DB_TYPE_COUNT)) {
  dma_free_coherent(hr_dev->dev, PAGE_SIZE, db->u.pgdir->page,
      db->u.pgdir->db_dma);
  list_del(&db->u.pgdir->list);
  kfree(db->u.pgdir);
 }

 mutex_unlock(&hr_dev->pgdir_mutex);
}
