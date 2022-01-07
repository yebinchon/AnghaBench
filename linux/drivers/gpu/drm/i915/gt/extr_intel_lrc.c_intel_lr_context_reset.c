
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct intel_engine_cs {scalar_t__ context_size; scalar_t__ pinned_default_state; } ;
struct intel_context {TYPE_1__* ring; int * lrc_reg_state; } ;
struct TYPE_3__ {int head; } ;


 int LRC_STATE_PN ;
 int PAGE_SIZE ;
 int __execlists_update_reg_state (struct intel_context*,struct intel_engine_cs*) ;
 int execlists_init_reg_state (int *,struct intel_context*,struct intel_engine_cs*,TYPE_1__*) ;
 int intel_ring_update_space (TYPE_1__*) ;
 int memcpy (int *,scalar_t__,scalar_t__) ;

void intel_lr_context_reset(struct intel_engine_cs *engine,
       struct intel_context *ce,
       u32 head,
       bool scrub)
{
 if (scrub) {
  u32 *regs = ce->lrc_reg_state;

  if (engine->pinned_default_state) {
   memcpy(regs,
          engine->pinned_default_state + LRC_STATE_PN * PAGE_SIZE,
          engine->context_size - PAGE_SIZE);
  }
  execlists_init_reg_state(regs, ce, engine, ce->ring);
 }


 ce->ring->head = head;
 intel_ring_update_space(ce->ring);

 __execlists_update_reg_state(ce, engine);
}
