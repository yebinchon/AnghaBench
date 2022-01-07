
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_pages; } ;
struct radeon_bo {void* kptr; int kmap; TYPE_1__ tbo; } ;


 int radeon_bo_check_tiling (struct radeon_bo*,int ,int ) ;
 int ttm_bo_kmap (TYPE_1__*,int ,int ,int *) ;
 void* ttm_kmap_obj_virtual (int *,int*) ;

int radeon_bo_kmap(struct radeon_bo *bo, void **ptr)
{
 bool is_iomem;
 int r;

 if (bo->kptr) {
  if (ptr) {
   *ptr = bo->kptr;
  }
  return 0;
 }
 r = ttm_bo_kmap(&bo->tbo, 0, bo->tbo.num_pages, &bo->kmap);
 if (r) {
  return r;
 }
 bo->kptr = ttm_kmap_obj_virtual(&bo->kmap, &is_iomem);
 if (ptr) {
  *ptr = bo->kptr;
 }
 radeon_bo_check_tiling(bo, 0, 0);
 return 0;
}
