
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_pages; } ;
struct qxl_bo {int map_count; void* kptr; int kmap; TYPE_1__ tbo; } ;


 int ttm_bo_kmap (TYPE_1__*,int ,int ,int *) ;
 void* ttm_kmap_obj_virtual (int *,int*) ;

int qxl_bo_kmap(struct qxl_bo *bo, void **ptr)
{
 bool is_iomem;
 int r;

 if (bo->kptr) {
  if (ptr)
   *ptr = bo->kptr;
  bo->map_count++;
  return 0;
 }
 r = ttm_bo_kmap(&bo->tbo, 0, bo->tbo.num_pages, &bo->kmap);
 if (r)
  return r;
 bo->kptr = ttm_kmap_obj_virtual(&bo->kmap, &is_iomem);
 if (ptr)
  *ptr = bo->kptr;
 bo->map_count = 1;
 return 0;
}
