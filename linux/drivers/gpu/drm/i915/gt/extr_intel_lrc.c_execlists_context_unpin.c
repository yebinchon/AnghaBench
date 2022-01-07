
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_context {TYPE_2__* ring; TYPE_1__* state; int gem_context; int engine; scalar_t__ lrc_reg_state; } ;
struct TYPE_4__ {int tail; } ;
struct TYPE_3__ {int obj; } ;


 int LRC_STATE_PN ;
 int PAGE_SIZE ;
 int check_redzone (void*,int ) ;
 int i915_gem_context_unpin_hw_id (int ) ;
 int i915_gem_object_unpin_map (int ) ;
 int intel_ring_reset (TYPE_2__*,int ) ;

__attribute__((used)) static void execlists_context_unpin(struct intel_context *ce)
{
 check_redzone((void *)ce->lrc_reg_state - LRC_STATE_PN * PAGE_SIZE,
        ce->engine);

 i915_gem_context_unpin_hw_id(ce->gem_context);
 i915_gem_object_unpin_map(ce->state->obj);
 intel_ring_reset(ce->ring, ce->ring->tail);
}
