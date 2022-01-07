
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {struct pool* pool; } ;
struct pool {int pmd; } ;
typedef int dm_block_t ;


 int EINVAL ;
 int ENOSPC ;
 int PM_OUT_OF_DATA_SPACE ;
 scalar_t__ PM_WRITE ;
 scalar_t__ WARN_ON (int) ;
 int check_low_water_mark (struct pool*,int ) ;
 int commit (struct pool*) ;
 int dm_pool_alloc_data_block (int ,int *) ;
 int dm_pool_get_free_block_count (int ,int *) ;
 int dm_pool_get_free_metadata_block_count (int ,int *) ;
 scalar_t__ get_pool_mode (struct pool*) ;
 int metadata_operation_failed (struct pool*,char*,int) ;
 int set_pool_mode (struct pool*,int ) ;

__attribute__((used)) static int alloc_data_block(struct thin_c *tc, dm_block_t *result)
{
 int r;
 dm_block_t free_blocks;
 struct pool *pool = tc->pool;

 if (WARN_ON(get_pool_mode(pool) != PM_WRITE))
  return -EINVAL;

 r = dm_pool_get_free_block_count(pool->pmd, &free_blocks);
 if (r) {
  metadata_operation_failed(pool, "dm_pool_get_free_block_count", r);
  return r;
 }

 check_low_water_mark(pool, free_blocks);

 if (!free_blocks) {




  r = commit(pool);
  if (r)
   return r;

  r = dm_pool_get_free_block_count(pool->pmd, &free_blocks);
  if (r) {
   metadata_operation_failed(pool, "dm_pool_get_free_block_count", r);
   return r;
  }

  if (!free_blocks) {
   set_pool_mode(pool, PM_OUT_OF_DATA_SPACE);
   return -ENOSPC;
  }
 }

 r = dm_pool_alloc_data_block(pool->pmd, result);
 if (r) {
  if (r == -ENOSPC)
   set_pool_mode(pool, PM_OUT_OF_DATA_SPACE);
  else
   metadata_operation_failed(pool, "dm_pool_alloc_data_block", r);
  return r;
 }

 r = dm_pool_get_free_metadata_block_count(pool->pmd, &free_blocks);
 if (r) {
  metadata_operation_failed(pool, "dm_pool_get_free_metadata_block_count", r);
  return r;
 }

 if (!free_blocks) {

  r = commit(pool);
  if (r)
   return r;
 }

 return 0;
}
