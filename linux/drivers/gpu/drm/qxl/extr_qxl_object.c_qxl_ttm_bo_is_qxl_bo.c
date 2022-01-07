
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_buffer_object {int * destroy; } ;


 int qxl_ttm_bo_destroy ;

bool qxl_ttm_bo_is_qxl_bo(struct ttm_buffer_object *bo)
{
 if (bo->destroy == &qxl_ttm_bo_destroy)
  return 1;
 return 0;
}
