
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int uint64_t ;
struct page {int dummy; } ;
struct TYPE_2__ {int ptr; struct page** pages; int ready; } ;
struct amdgpu_device {int num_vmhubs; TYPE_1__ gart; } ;
typedef int dma_addr_t ;


 unsigned int AMDGPU_GPU_PAGES_IN_CPU_PAGE ;
 unsigned int AMDGPU_GPU_PAGE_SIZE ;
 int EINVAL ;
 int WARN (int,char*) ;
 int amdgpu_asic_flush_hdp (struct amdgpu_device*,int *) ;
 int amdgpu_gart_map (struct amdgpu_device*,unsigned int,int,int *,unsigned int,int ) ;
 int amdgpu_gmc_flush_gpu_tlb (struct amdgpu_device*,int ,int,int ) ;
 int mb () ;

int amdgpu_gart_bind(struct amdgpu_device *adev, uint64_t offset,
       int pages, struct page **pagelist, dma_addr_t *dma_addr,
       uint64_t flags)
{



 int r, i;

 if (!adev->gart.ready) {
  WARN(1, "trying to bind memory to uninitialized GART !\n");
  return -EINVAL;
 }
 if (!adev->gart.ptr)
  return 0;

 r = amdgpu_gart_map(adev, offset, pages, dma_addr, flags,
      adev->gart.ptr);
 if (r)
  return r;

 mb();
 amdgpu_asic_flush_hdp(adev, ((void*)0));
 for (i = 0; i < adev->num_vmhubs; i++)
  amdgpu_gmc_flush_gpu_tlb(adev, 0, i, 0);
 return 0;
}
