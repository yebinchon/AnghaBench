
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_pages; } ;
struct radeon_bo {TYPE_1__ tbo; } ;


 int PAGE_SHIFT ;
 int RADEON_GPU_PAGE_SIZE ;

__attribute__((used)) static inline unsigned radeon_bo_ngpu_pages(struct radeon_bo *bo)
{
 return (bo->tbo.num_pages << PAGE_SHIFT) / RADEON_GPU_PAGE_SIZE;
}
