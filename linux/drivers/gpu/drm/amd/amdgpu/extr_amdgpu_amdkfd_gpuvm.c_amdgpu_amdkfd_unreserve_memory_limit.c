
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {int bdev; } ;
struct amdgpu_bo {scalar_t__ preferred_domains; int flags; TYPE_1__ tbo; } ;


 int AMDGPU_AMDKFD_USERPTR_BO ;
 scalar_t__ AMDGPU_GEM_DOMAIN_CPU ;
 int amdgpu_bo_size (struct amdgpu_bo*) ;
 struct amdgpu_device* amdgpu_ttm_adev (int ) ;
 int unreserve_mem_limit (struct amdgpu_device*,int ,scalar_t__,int) ;

void amdgpu_amdkfd_unreserve_memory_limit(struct amdgpu_bo *bo)
{
 struct amdgpu_device *adev = amdgpu_ttm_adev(bo->tbo.bdev);
 u32 domain = bo->preferred_domains;
 bool sg = (bo->preferred_domains == AMDGPU_GEM_DOMAIN_CPU);

 if (bo->flags & AMDGPU_AMDKFD_USERPTR_BO) {
  domain = AMDGPU_GEM_DOMAIN_CPU;
  sg = 0;
 }

 unreserve_mem_limit(adev, amdgpu_bo_size(bo), domain, sg);
}
