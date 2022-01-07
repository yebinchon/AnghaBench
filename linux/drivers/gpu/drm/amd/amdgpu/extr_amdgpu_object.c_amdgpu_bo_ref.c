
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_bo {int tbo; } ;


 int ttm_bo_get (int *) ;

struct amdgpu_bo *amdgpu_bo_ref(struct amdgpu_bo *bo)
{
 if (bo == ((void*)0))
  return ((void*)0);

 ttm_bo_get(&bo->tbo);
 return bo;
}
