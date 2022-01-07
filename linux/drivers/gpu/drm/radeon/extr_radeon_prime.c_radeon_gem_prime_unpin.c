
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_bo {scalar_t__ prime_shared_count; } ;
struct drm_gem_object {int dummy; } ;


 struct radeon_bo* gem_to_radeon_bo (struct drm_gem_object*) ;
 int radeon_bo_reserve (struct radeon_bo*,int) ;
 int radeon_bo_unpin (struct radeon_bo*) ;
 int radeon_bo_unreserve (struct radeon_bo*) ;
 scalar_t__ unlikely (int) ;

void radeon_gem_prime_unpin(struct drm_gem_object *obj)
{
 struct radeon_bo *bo = gem_to_radeon_bo(obj);
 int ret = 0;

 ret = radeon_bo_reserve(bo, 0);
 if (unlikely(ret != 0))
  return;

 radeon_bo_unpin(bo);
 if (bo->prime_shared_count)
  bo->prime_shared_count--;
 radeon_bo_unreserve(bo);
}
