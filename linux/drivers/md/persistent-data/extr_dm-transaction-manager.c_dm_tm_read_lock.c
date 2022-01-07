
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_transaction_manager {int bm; TYPE_1__* real; scalar_t__ is_clone; } ;
struct dm_block_validator {int dummy; } ;
struct dm_block {int dummy; } ;
typedef int dm_block_t ;
struct TYPE_2__ {int prefetches; int bm; } ;


 int EWOULDBLOCK ;
 int dm_bm_read_lock (int ,int ,struct dm_block_validator*,struct dm_block**) ;
 int dm_bm_read_try_lock (int ,int ,struct dm_block_validator*,struct dm_block**) ;
 int prefetch_add (int *,int ) ;

int dm_tm_read_lock(struct dm_transaction_manager *tm, dm_block_t b,
      struct dm_block_validator *v,
      struct dm_block **blk)
{
 if (tm->is_clone) {
  int r = dm_bm_read_try_lock(tm->real->bm, b, v, blk);

  if (r == -EWOULDBLOCK)
   prefetch_add(&tm->real->prefetches, b);

  return r;
 }

 return dm_bm_read_lock(tm->bm, b, v, blk);
}
