
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_context {int pin_count; } ;
struct i915_execbuffer {TYPE_2__* i915; } ;
struct TYPE_3__ {int struct_mutex; } ;
struct TYPE_4__ {TYPE_1__ drm; } ;


 int __intel_context_do_pin (struct intel_context*) ;
 int atomic_inc_not_zero (int *) ;
 scalar_t__ likely (int ) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
__eb_pin_context(struct i915_execbuffer *eb, struct intel_context *ce)
{
 int err;

 if (likely(atomic_inc_not_zero(&ce->pin_count)))
  return 0;

 err = mutex_lock_interruptible(&eb->i915->drm.struct_mutex);
 if (err)
  return err;

 err = __intel_context_do_pin(ce);
 mutex_unlock(&eb->i915->drm.struct_mutex);

 return err;
}
