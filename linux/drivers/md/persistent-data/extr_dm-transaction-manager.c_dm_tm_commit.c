
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_transaction_manager {int bm; scalar_t__ is_clone; } ;
struct dm_block {int dummy; } ;


 int EWOULDBLOCK ;
 int dm_bm_flush (int ) ;
 int dm_bm_unlock (struct dm_block*) ;
 int wipe_shadow_table (struct dm_transaction_manager*) ;

int dm_tm_commit(struct dm_transaction_manager *tm, struct dm_block *root)
{
 if (tm->is_clone)
  return -EWOULDBLOCK;

 wipe_shadow_table(tm);
 dm_bm_unlock(root);

 return dm_bm_flush(tm->bm);
}
