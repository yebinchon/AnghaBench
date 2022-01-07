
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_bo {int prime_shared_count; } ;
struct drm_gem_object {int dummy; } ;


 int RADEON_GEM_DOMAIN_GTT ;
 struct radeon_bo* gem_to_radeon_bo (struct drm_gem_object*) ;
 scalar_t__ likely (int) ;
 int radeon_bo_pin (struct radeon_bo*,int ,int *) ;
 int radeon_bo_reserve (struct radeon_bo*,int) ;
 int radeon_bo_unreserve (struct radeon_bo*) ;
 scalar_t__ unlikely (int) ;

int radeon_gem_prime_pin(struct drm_gem_object *obj)
{
 struct radeon_bo *bo = gem_to_radeon_bo(obj);
 int ret = 0;

 ret = radeon_bo_reserve(bo, 0);
 if (unlikely(ret != 0))
  return ret;


 ret = radeon_bo_pin(bo, RADEON_GEM_DOMAIN_GTT, ((void*)0));
 if (likely(ret == 0))
  bo->prime_shared_count++;

 radeon_bo_unreserve(bo);
 return ret;
}
