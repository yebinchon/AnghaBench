
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u32 ;
struct TYPE_2__ {void* csa_cpu_addr; } ;
struct amdgpu_device {TYPE_1__ virt; } ;
struct amdgpu_bo {int dummy; } ;


 int ENOMEM ;
 int PAGE_SIZE ;
 int amdgpu_bo_create_kernel (struct amdgpu_device*,int ,int ,int ,struct amdgpu_bo**,int *,void**) ;
 int memset (void*,int ,int ) ;

int amdgpu_allocate_static_csa(struct amdgpu_device *adev, struct amdgpu_bo **bo,
    u32 domain, uint32_t size)
{
 int r;
 void *ptr;

 r = amdgpu_bo_create_kernel(adev, size, PAGE_SIZE,
    domain, bo,
    ((void*)0), &ptr);
 if (!*bo)
  return -ENOMEM;

 memset(ptr, 0, size);
 adev->virt.csa_cpu_addr = ptr;
 return 0;
}
