
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_bo {int kmap; } ;


 void* ttm_kmap_obj_virtual (int *,int*) ;

void *amdgpu_bo_kptr(struct amdgpu_bo *bo)
{
 bool is_iomem;

 return ttm_kmap_obj_virtual(&bo->kmap, &is_iomem);
}
