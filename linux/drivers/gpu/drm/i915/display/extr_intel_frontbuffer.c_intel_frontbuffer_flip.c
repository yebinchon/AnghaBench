
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int busy_bits; int lock; } ;
struct drm_i915_private {TYPE_1__ fb_tracking; } ;


 int ORIGIN_FLIP ;
 int frontbuffer_flush (struct drm_i915_private*,unsigned int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void intel_frontbuffer_flip(struct drm_i915_private *i915,
       unsigned frontbuffer_bits)
{
 spin_lock(&i915->fb_tracking.lock);

 i915->fb_tracking.busy_bits &= ~frontbuffer_bits;
 spin_unlock(&i915->fb_tracking.lock);

 frontbuffer_flush(i915, frontbuffer_bits, ORIGIN_FLIP);
}
