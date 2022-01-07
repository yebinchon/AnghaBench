
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct ttm_operation_ctx {int interruptible; int no_wait_gpu; scalar_t__ bytes_moved; int flags; int resv; } ;
struct amdgpu_device {int gmc; } ;
struct amdgpu_cs_parser {scalar_t__ bytes_moved; scalar_t__ bytes_moved_threshold; scalar_t__ bytes_moved_vis; scalar_t__ bytes_moved_vis_threshold; } ;
struct TYPE_3__ {int resv; } ;
struct TYPE_4__ {TYPE_1__ base; int bdev; } ;
struct amdgpu_bo {int flags; scalar_t__ preferred_domains; scalar_t__ allowed_domains; int placement; TYPE_2__ tbo; scalar_t__ pin_count; } ;


 int AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED ;
 int ENOMEM ;
 scalar_t__ amdgpu_bo_in_cpu_visible_vram (struct amdgpu_bo*) ;
 int amdgpu_bo_placement_from_domain (struct amdgpu_bo*,scalar_t__) ;
 int amdgpu_gmc_vram_full_visible (int *) ;
 struct amdgpu_device* amdgpu_ttm_adev (int ) ;
 int ttm_bo_validate (TYPE_2__*,int *,struct ttm_operation_ctx*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int amdgpu_cs_bo_validate(struct amdgpu_cs_parser *p,
     struct amdgpu_bo *bo)
{
 struct amdgpu_device *adev = amdgpu_ttm_adev(bo->tbo.bdev);
 struct ttm_operation_ctx ctx = {
  .interruptible = 1,
  .no_wait_gpu = 0,
  .resv = bo->tbo.base.resv,
  .flags = 0
 };
 uint32_t domain;
 int r;

 if (bo->pin_count)
  return 0;




 if (p->bytes_moved < p->bytes_moved_threshold) {
  if (!amdgpu_gmc_vram_full_visible(&adev->gmc) &&
      (bo->flags & AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED)) {




   if (p->bytes_moved_vis < p->bytes_moved_vis_threshold)
    domain = bo->preferred_domains;
   else
    domain = bo->allowed_domains;
  } else {
   domain = bo->preferred_domains;
  }
 } else {
  domain = bo->allowed_domains;
 }

retry:
 amdgpu_bo_placement_from_domain(bo, domain);
 r = ttm_bo_validate(&bo->tbo, &bo->placement, &ctx);

 p->bytes_moved += ctx.bytes_moved;
 if (!amdgpu_gmc_vram_full_visible(&adev->gmc) &&
     amdgpu_bo_in_cpu_visible_vram(bo))
  p->bytes_moved_vis += ctx.bytes_moved;

 if (unlikely(r == -ENOMEM) && domain != bo->allowed_domains) {
  domain = bo->allowed_domains;
  goto retry;
 }

 return r;
}
