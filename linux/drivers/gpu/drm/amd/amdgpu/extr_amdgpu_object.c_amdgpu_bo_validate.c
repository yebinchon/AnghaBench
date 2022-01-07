
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ttm_operation_ctx {int member_0; int member_1; } ;
struct amdgpu_bo {scalar_t__ preferred_domains; scalar_t__ allowed_domains; int placement; int tbo; scalar_t__ pin_count; } ;


 int ENOMEM ;
 int amdgpu_bo_placement_from_domain (struct amdgpu_bo*,scalar_t__) ;
 int ttm_bo_validate (int *,int *,struct ttm_operation_ctx*) ;
 scalar_t__ unlikely (int) ;

int amdgpu_bo_validate(struct amdgpu_bo *bo)
{
 struct ttm_operation_ctx ctx = { 0, 0 };
 uint32_t domain;
 int r;

 if (bo->pin_count)
  return 0;

 domain = bo->preferred_domains;

retry:
 amdgpu_bo_placement_from_domain(bo, domain);
 r = ttm_bo_validate(&bo->tbo, &bo->placement, &ctx);
 if (unlikely(r == -ENOMEM) && domain != bo->allowed_domains) {
  domain = bo->allowed_domains;
  goto retry;
 }

 return r;
}
