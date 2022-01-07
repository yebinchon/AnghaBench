
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct intel_context {int lrc_desc; int * lrc_reg_state; } ;
struct i915_request {int tail; int ring; struct intel_context* hw_context; } ;


 int CTX_DESC_FORCE_RESTORE ;
 int CTX_RING_TAIL ;
 int intel_ring_set_tail (int ,int ) ;
 int mb () ;

__attribute__((used)) static u64 execlists_update_context(const struct i915_request *rq)
{
 struct intel_context *ce = rq->hw_context;
 u64 desc;

 ce->lrc_reg_state[CTX_RING_TAIL + 1] =
  intel_ring_set_tail(rq->ring, rq->tail);
 mb();

 desc = ce->lrc_desc;
 ce->lrc_desc &= ~CTX_DESC_FORCE_RESTORE;

 return desc;
}
