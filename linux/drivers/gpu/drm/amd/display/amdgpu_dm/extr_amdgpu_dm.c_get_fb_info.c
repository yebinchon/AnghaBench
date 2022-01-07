
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int * obj; } ;
struct amdgpu_framebuffer {TYPE_1__ base; } ;
struct amdgpu_bo {int dummy; } ;


 int DRM_ERROR (char*,int) ;
 int ERESTARTSYS ;
 int amdgpu_bo_get_tiling_flags (struct amdgpu_bo*,int *) ;
 int amdgpu_bo_reserve (struct amdgpu_bo*,int) ;
 int amdgpu_bo_unreserve (struct amdgpu_bo*) ;
 struct amdgpu_bo* gem_to_amdgpu_bo (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int get_fb_info(const struct amdgpu_framebuffer *amdgpu_fb,
         uint64_t *tiling_flags)
{
 struct amdgpu_bo *rbo = gem_to_amdgpu_bo(amdgpu_fb->base.obj[0]);
 int r = amdgpu_bo_reserve(rbo, 0);

 if (unlikely(r)) {

  if (r != -ERESTARTSYS)
   DRM_ERROR("Unable to reserve buffer: %d\n", r);
  return r;
 }

 if (tiling_flags)
  amdgpu_bo_get_tiling_flags(rbo, tiling_flags);

 amdgpu_bo_unreserve(rbo);

 return r;
}
