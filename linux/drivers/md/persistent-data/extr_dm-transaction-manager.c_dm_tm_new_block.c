
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_transaction_manager {int sm; int bm; scalar_t__ is_clone; } ;
struct dm_block_validator {int dummy; } ;
struct dm_block {int dummy; } ;
typedef int dm_block_t ;


 int EWOULDBLOCK ;
 int dm_bm_write_lock_zero (int ,int ,struct dm_block_validator*,struct dm_block**) ;
 int dm_sm_dec_block (int ,int ) ;
 int dm_sm_new_block (int ,int *) ;
 int insert_shadow (struct dm_transaction_manager*,int ) ;

int dm_tm_new_block(struct dm_transaction_manager *tm,
      struct dm_block_validator *v,
      struct dm_block **result)
{
 int r;
 dm_block_t new_block;

 if (tm->is_clone)
  return -EWOULDBLOCK;

 r = dm_sm_new_block(tm->sm, &new_block);
 if (r < 0)
  return r;

 r = dm_bm_write_lock_zero(tm->bm, new_block, v, result);
 if (r < 0) {
  dm_sm_dec_block(tm->sm, new_block);
  return r;
 }





 insert_shadow(tm, new_block);

 return 0;
}
