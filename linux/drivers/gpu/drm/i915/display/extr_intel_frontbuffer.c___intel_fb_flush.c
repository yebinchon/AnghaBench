
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct intel_frontbuffer {TYPE_2__* obj; } ;
struct TYPE_6__ {unsigned int busy_bits; int lock; } ;
struct drm_i915_private {TYPE_3__ fb_tracking; } ;
typedef enum fb_op_origin { ____Placeholder_fb_op_origin } fb_op_origin ;
struct TYPE_4__ {int dev; } ;
struct TYPE_5__ {TYPE_1__ base; } ;


 int ORIGIN_CS ;
 int frontbuffer_flush (struct drm_i915_private*,unsigned int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct drm_i915_private* to_i915 (int ) ;

void __intel_fb_flush(struct intel_frontbuffer *front,
        enum fb_op_origin origin,
        unsigned int frontbuffer_bits)
{
 struct drm_i915_private *i915 = to_i915(front->obj->base.dev);

 if (origin == ORIGIN_CS) {
  spin_lock(&i915->fb_tracking.lock);

  frontbuffer_bits &= i915->fb_tracking.busy_bits;
  i915->fb_tracking.busy_bits &= ~frontbuffer_bits;
  spin_unlock(&i915->fb_tracking.lock);
 }

 if (frontbuffer_bits)
  frontbuffer_flush(i915, frontbuffer_bits, origin);
}
