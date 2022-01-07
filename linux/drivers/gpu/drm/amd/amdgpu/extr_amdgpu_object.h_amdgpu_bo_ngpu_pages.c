
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_pages; } ;
struct amdgpu_bo {TYPE_1__ tbo; } ;


 int AMDGPU_GPU_PAGE_SIZE ;
 int PAGE_SHIFT ;

__attribute__((used)) static inline unsigned amdgpu_bo_ngpu_pages(struct amdgpu_bo *bo)
{
 return (bo->tbo.num_pages << PAGE_SHIFT) / AMDGPU_GPU_PAGE_SIZE;
}
