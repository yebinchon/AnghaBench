
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * robj; int ptr; int gpu_addr; } ;
struct radeon_device {TYPE_1__ vram_scratch; } ;


 int PAGE_SIZE ;
 int RADEON_GEM_DOMAIN_VRAM ;
 int RADEON_GPU_PAGE_SIZE ;
 int radeon_bo_create (struct radeon_device*,int ,int ,int,int ,int ,int *,int *,int **) ;
 int radeon_bo_kmap (int *,void**) ;
 int radeon_bo_pin (int *,int ,int *) ;
 int radeon_bo_reserve (int *,int) ;
 int radeon_bo_unpin (int *) ;
 int radeon_bo_unreserve (int *) ;
 scalar_t__ unlikely (int) ;

int r600_vram_scratch_init(struct radeon_device *rdev)
{
 int r;

 if (rdev->vram_scratch.robj == ((void*)0)) {
  r = radeon_bo_create(rdev, RADEON_GPU_PAGE_SIZE,
         PAGE_SIZE, 1, RADEON_GEM_DOMAIN_VRAM,
         0, ((void*)0), ((void*)0), &rdev->vram_scratch.robj);
  if (r) {
   return r;
  }
 }

 r = radeon_bo_reserve(rdev->vram_scratch.robj, 0);
 if (unlikely(r != 0))
  return r;
 r = radeon_bo_pin(rdev->vram_scratch.robj,
     RADEON_GEM_DOMAIN_VRAM, &rdev->vram_scratch.gpu_addr);
 if (r) {
  radeon_bo_unreserve(rdev->vram_scratch.robj);
  return r;
 }
 r = radeon_bo_kmap(rdev->vram_scratch.robj,
    (void **)&rdev->vram_scratch.ptr);
 if (r)
  radeon_bo_unpin(rdev->vram_scratch.robj);
 radeon_bo_unreserve(rdev->vram_scratch.robj);

 return r;
}
