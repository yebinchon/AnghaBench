
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_context {int pin_count; int state; TYPE_1__* engine; } ;
struct TYPE_2__ {int i915; } ;


 scalar_t__ HAS_LOGICAL_RING_CONTEXTS (int ) ;
 int atomic_read (int *) ;

__attribute__((used)) static bool skip_ppgtt_update(struct intel_context *ce, void *data)
{
 if (HAS_LOGICAL_RING_CONTEXTS(ce->engine->i915))
  return !ce->state;
 else
  return !atomic_read(&ce->pin_count);
}
