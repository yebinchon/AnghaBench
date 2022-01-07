
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {int pmd; } ;
typedef scalar_t__ dm_block_t ;


 scalar_t__ PM_OUT_OF_DATA_SPACE ;
 int PM_WRITE ;
 int dm_pool_get_free_block_count (int ,scalar_t__*) ;
 scalar_t__ get_pool_mode (struct pool*) ;
 int requeue_bios (struct pool*) ;
 int set_pool_mode (struct pool*,int ) ;

__attribute__((used)) static void check_for_data_space(struct pool *pool)
{
 int r;
 dm_block_t nr_free;

 if (get_pool_mode(pool) != PM_OUT_OF_DATA_SPACE)
  return;

 r = dm_pool_get_free_block_count(pool->pmd, &nr_free);
 if (r)
  return;

 if (nr_free) {
  set_pool_mode(pool, PM_WRITE);
  requeue_bios(pool);
 }
}
