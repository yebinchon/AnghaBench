
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_mem_type_manager {int io_reserve_mutex; int io_reserve_fastpath; } ;


 scalar_t__ likely (int ) ;
 int mutex_unlock (int *) ;

void ttm_mem_io_unlock(struct ttm_mem_type_manager *man)
{
 if (likely(man->io_reserve_fastpath))
  return;

 mutex_unlock(&man->io_reserve_mutex);
}
