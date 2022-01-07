
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_bo {int dummy; } ;


 int amdgpu_bo_create_reserved (struct amdgpu_device*,unsigned long,int,int ,struct amdgpu_bo**,int *,void**) ;
 int amdgpu_bo_unreserve (struct amdgpu_bo*) ;

int amdgpu_bo_create_kernel(struct amdgpu_device *adev,
       unsigned long size, int align,
       u32 domain, struct amdgpu_bo **bo_ptr,
       u64 *gpu_addr, void **cpu_addr)
{
 int r;

 r = amdgpu_bo_create_reserved(adev, size, align, domain, bo_ptr,
          gpu_addr, cpu_addr);

 if (r)
  return r;

 if (*bo_ptr)
  amdgpu_bo_unreserve(*bo_ptr);

 return 0;
}
