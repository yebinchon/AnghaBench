
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_buffer_object {int cpu_writers; } ;


 int atomic_dec (int *) ;

void ttm_bo_synccpu_write_release(struct ttm_buffer_object *bo)
{
 atomic_dec(&bo->cpu_writers);
}
