
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_ring {int tail; int head; int vma; } ;
struct intel_engine_cs {scalar_t__ class; int i915; } ;
struct intel_context {int sseu; int * lrc_reg_state; struct intel_ring* ring; } ;


 int CTX_RING_BUFFER_START ;
 int CTX_RING_HEAD ;
 int CTX_RING_TAIL ;
 int CTX_R_PWR_CLK_STATE ;
 int GEM_BUG_ON (int) ;
 scalar_t__ RENDER_CLASS ;
 int i915_ggtt_offset (int ) ;
 int i915_oa_init_reg_state (struct intel_engine_cs*,struct intel_context*,int *) ;
 int intel_ring_offset_valid (struct intel_ring*,int ) ;
 int intel_sseu_make_rpcs (int ,int *) ;

__attribute__((used)) static void
__execlists_update_reg_state(struct intel_context *ce,
        struct intel_engine_cs *engine)
{
 struct intel_ring *ring = ce->ring;
 u32 *regs = ce->lrc_reg_state;

 GEM_BUG_ON(!intel_ring_offset_valid(ring, ring->head));
 GEM_BUG_ON(!intel_ring_offset_valid(ring, ring->tail));

 regs[CTX_RING_BUFFER_START + 1] = i915_ggtt_offset(ring->vma);
 regs[CTX_RING_HEAD + 1] = ring->head;
 regs[CTX_RING_TAIL + 1] = ring->tail;


 if (engine->class == RENDER_CLASS) {
  regs[CTX_R_PWR_CLK_STATE + 1] =
   intel_sseu_make_rpcs(engine->i915, &ce->sseu);

  i915_oa_init_reg_state(engine, ce, regs);
 }
}
