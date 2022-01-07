
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_buffer_object {int * destroy; } ;


 int amdgpu_bo_destroy ;

bool amdgpu_bo_is_amdgpu_bo(struct ttm_buffer_object *bo)
{
 if (bo->destroy == &amdgpu_bo_destroy)
  return 1;
 return 0;
}
