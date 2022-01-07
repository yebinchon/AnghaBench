
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_buffer_object {int kref; } ;


 int kref_put (int *,int ) ;
 int ttm_bo_release ;

void ttm_bo_put(struct ttm_buffer_object *bo)
{
 kref_put(&bo->kref, ttm_bo_release);
}
