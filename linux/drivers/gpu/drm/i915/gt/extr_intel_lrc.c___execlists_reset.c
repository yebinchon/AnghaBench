
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct intel_engine_execlists {int dummy; } ;
struct intel_engine_cs {int name; scalar_t__ context_size; scalar_t__ pinned_default_state; struct intel_engine_execlists execlists; } ;
struct intel_context {TYPE_1__* ring; int * lrc_reg_state; int state; int active; } ;
struct i915_request {int head; struct intel_context* hw_context; } ;
struct TYPE_4__ {int tail; int head; } ;


 int GEM_BUG_ON (int) ;
 int GEM_TRACE (char*,int ,int ,int ) ;
 int LRC_STATE_PN ;
 int PAGE_SIZE ;
 int __execlists_update_reg_state (struct intel_context*,struct intel_engine_cs*) ;
 int __i915_request_reset (struct i915_request*,int) ;
 int __unwind_incomplete_requests (struct intel_engine_cs*) ;
 struct i915_request* active_request (struct i915_request*) ;
 int cancel_port_requests (struct intel_engine_execlists* const) ;
 struct i915_request* execlists_active (struct intel_engine_execlists* const) ;
 int execlists_init_reg_state (int *,struct intel_context*,struct intel_engine_cs*,TYPE_1__*) ;
 int i915_active_is_idle (int *) ;
 int i915_request_started (struct i915_request*) ;
 int i915_vma_is_pinned (int ) ;
 int intel_ring_update_space (TYPE_1__*) ;
 int intel_ring_wrap (TYPE_1__*,int ) ;
 int memcpy (int *,scalar_t__,scalar_t__) ;
 int process_csb (struct intel_engine_cs*) ;
 int reset_csb_pointers (struct intel_engine_cs*) ;

__attribute__((used)) static void __execlists_reset(struct intel_engine_cs *engine, bool stalled)
{
 struct intel_engine_execlists * const execlists = &engine->execlists;
 struct intel_context *ce;
 struct i915_request *rq;
 u32 *regs;

 process_csb(engine);


 reset_csb_pointers(engine);






 rq = execlists_active(execlists);
 if (!rq)
  goto unwind;

 ce = rq->hw_context;
 GEM_BUG_ON(i915_active_is_idle(&ce->active));
 GEM_BUG_ON(!i915_vma_is_pinned(ce->state));
 rq = active_request(rq);
 if (!rq) {
  ce->ring->head = ce->ring->tail;
  goto out_replay;
 }

 ce->ring->head = intel_ring_wrap(ce->ring, rq->head);
 if (!i915_request_started(rq))
  goto out_replay;
 __i915_request_reset(rq, stalled);
 if (!stalled)
  goto out_replay;
 regs = ce->lrc_reg_state;
 if (engine->pinned_default_state) {
  memcpy(regs,
         engine->pinned_default_state + LRC_STATE_PN * PAGE_SIZE,
         engine->context_size - PAGE_SIZE);
 }
 execlists_init_reg_state(regs, ce, engine, ce->ring);

out_replay:
 GEM_TRACE("%s replay {head:%04x, tail:%04x\n",
    engine->name, ce->ring->head, ce->ring->tail);
 intel_ring_update_space(ce->ring);
 __execlists_update_reg_state(ce, engine);

unwind:

 cancel_port_requests(execlists);
 __unwind_incomplete_requests(engine);
}
