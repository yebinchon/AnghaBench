
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct amdgpu_bo {int dummy; } ;


 int amdgpu_bo_kunmap (struct amdgpu_bo*) ;
 scalar_t__ amdgpu_bo_reserve (struct amdgpu_bo*,int) ;
 int amdgpu_bo_unpin (struct amdgpu_bo*) ;
 int amdgpu_bo_unref (struct amdgpu_bo**) ;
 int amdgpu_bo_unreserve (struct amdgpu_bo*) ;
 scalar_t__ likely (int) ;

void amdgpu_bo_free_kernel(struct amdgpu_bo **bo, u64 *gpu_addr,
      void **cpu_addr)
{
 if (*bo == ((void*)0))
  return;

 if (likely(amdgpu_bo_reserve(*bo, 1) == 0)) {
  if (cpu_addr)
   amdgpu_bo_kunmap(*bo);

  amdgpu_bo_unpin(*bo);
  amdgpu_bo_unreserve(*bo);
 }
 amdgpu_bo_unref(bo);

 if (gpu_addr)
  *gpu_addr = 0;

 if (cpu_addr)
  *cpu_addr = ((void*)0);
}
