
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int flags; int queue; } ;
struct TYPE_4__ {TYPE_1__ reset; } ;
struct drm_i915_private {TYPE_2__ gt; } ;


 int I915_ERROR_CAPTURE ;
 int I915_RESET_BACKOFF ;
 int intel_gt_handle_error (TYPE_2__*,int ,int ,char*,int ) ;
 int test_bit (int ,int *) ;
 int wait_event (int ,int) ;

__attribute__((used)) static int
i915_wedged_set(void *data, u64 val)
{
 struct drm_i915_private *i915 = data;


 wait_event(i915->gt.reset.queue,
     !test_bit(I915_RESET_BACKOFF, &i915->gt.reset.flags));

 intel_gt_handle_error(&i915->gt, val, I915_ERROR_CAPTURE,
         "Manually set wedged engine mask = %llx", val);
 return 0;
}
