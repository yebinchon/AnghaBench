
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_syncobj {int dummy; } ;
struct drm_i915_gem_execbuffer2 {int num_cliprects; } ;


 int __free_fence_array (struct drm_syncobj**,int ) ;

__attribute__((used)) static void
put_fence_array(struct drm_i915_gem_execbuffer2 *args,
  struct drm_syncobj **fences)
{
 if (fences)
  __free_fence_array(fences, args->num_cliprects);
}
