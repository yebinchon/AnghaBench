
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_execbuffer2 {int flags; int DR4; int batch_start_offset; int batch_len; scalar_t__ DR1; scalar_t__ cliprects_ptr; scalar_t__ num_cliprects; } ;


 int DRM_DEBUG (char*) ;
 int I915_EXEC_FENCE_ARRAY ;
 int __I915_EXEC_ILLEGAL_FLAGS ;

__attribute__((used)) static bool i915_gem_check_execbuffer(struct drm_i915_gem_execbuffer2 *exec)
{
 if (exec->flags & __I915_EXEC_ILLEGAL_FLAGS)
  return 0;


 if (!(exec->flags & I915_EXEC_FENCE_ARRAY)) {
  if (exec->num_cliprects || exec->cliprects_ptr)
   return 0;
 }

 if (exec->DR4 == 0xffffffff) {
  DRM_DEBUG("UXA submitting garbage DR4, fixing up\n");
  exec->DR4 = 0;
 }
 if (exec->DR1 || exec->DR4)
  return 0;

 if ((exec->batch_start_offset | exec->batch_len) & 0x7)
  return 0;

 return 1;
}
