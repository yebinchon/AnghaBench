
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;
struct amdgpu_bo {int dummy; } ;


 int amdgpu_bo_free_kernel (struct amdgpu_bo**,int *,int *) ;

__attribute__((used)) static int amdgpu_ras_release_vram(struct amdgpu_device *adev,
  struct amdgpu_bo **bo_ptr)
{

 amdgpu_bo_free_kernel(bo_ptr, ((void*)0), ((void*)0));
 return 0;
}
