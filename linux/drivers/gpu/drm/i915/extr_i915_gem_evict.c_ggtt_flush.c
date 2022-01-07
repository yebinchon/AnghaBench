
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int I915_WAIT_INTERRUPTIBLE ;
 int I915_WAIT_LOCKED ;
 int MAX_SCHEDULE_TIMEOUT ;
 int i915_gem_wait_for_idle (struct drm_i915_private*,int,int ) ;

__attribute__((used)) static int ggtt_flush(struct drm_i915_private *i915)
{







 return i915_gem_wait_for_idle(i915,
          I915_WAIT_INTERRUPTIBLE |
          I915_WAIT_LOCKED,
          MAX_SCHEDULE_TIMEOUT);
}
