
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int busy_bits; int lock; } ;
struct drm_i915_private {TYPE_1__ fb_tracking; } ;
typedef enum fb_op_origin { ____Placeholder_fb_op_origin } fb_op_origin ;


 int intel_edp_drrs_flush (struct drm_i915_private*,unsigned int) ;
 int intel_fbc_flush (struct drm_i915_private*,unsigned int,int) ;
 int intel_psr_flush (struct drm_i915_private*,unsigned int,int) ;
 int might_sleep () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void frontbuffer_flush(struct drm_i915_private *i915,
         unsigned int frontbuffer_bits,
         enum fb_op_origin origin)
{

 spin_lock(&i915->fb_tracking.lock);
 frontbuffer_bits &= ~i915->fb_tracking.busy_bits;
 spin_unlock(&i915->fb_tracking.lock);

 if (!frontbuffer_bits)
  return;

 might_sleep();
 intel_edp_drrs_flush(i915, frontbuffer_bits);
 intel_psr_flush(i915, frontbuffer_bits, origin);
 intel_fbc_flush(i915, frontbuffer_bits, origin);
}
