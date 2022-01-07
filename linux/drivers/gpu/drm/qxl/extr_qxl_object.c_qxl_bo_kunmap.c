
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qxl_bo {scalar_t__ map_count; int kmap; int * kptr; } ;


 int ttm_bo_kunmap (int *) ;

void qxl_bo_kunmap(struct qxl_bo *bo)
{
 if (bo->kptr == ((void*)0))
  return;
 bo->map_count--;
 if (bo->map_count > 0)
  return;
 bo->kptr = ((void*)0);
 ttm_bo_kunmap(&bo->kmap);
}
