
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i915_wa_list {int count; struct i915_wa* list; } ;
struct i915_wa {int val; int reg; } ;
struct i915_request {TYPE_1__* engine; } ;
struct TYPE_2__ {int (* emit_flush ) (struct i915_request*,int ) ;struct i915_wa_list ctx_wa_list; } ;


 int EMIT_BARRIER ;
 scalar_t__ IS_ERR (int *) ;
 int MI_LOAD_REGISTER_IMM (int) ;
 int MI_NOOP ;
 int PTR_ERR (int *) ;
 int i915_mmio_reg_offset (int ) ;
 int intel_ring_advance (struct i915_request*,int *) ;
 int * intel_ring_begin (struct i915_request*,int) ;
 int stub1 (struct i915_request*,int ) ;
 int stub2 (struct i915_request*,int ) ;

int intel_engine_emit_ctx_wa(struct i915_request *rq)
{
 struct i915_wa_list *wal = &rq->engine->ctx_wa_list;
 struct i915_wa *wa;
 unsigned int i;
 u32 *cs;
 int ret;

 if (wal->count == 0)
  return 0;

 ret = rq->engine->emit_flush(rq, EMIT_BARRIER);
 if (ret)
  return ret;

 cs = intel_ring_begin(rq, (wal->count * 2 + 2));
 if (IS_ERR(cs))
  return PTR_ERR(cs);

 *cs++ = MI_LOAD_REGISTER_IMM(wal->count);
 for (i = 0, wa = wal->list; i < wal->count; i++, wa++) {
  *cs++ = i915_mmio_reg_offset(wa->reg);
  *cs++ = wa->val;
 }
 *cs++ = MI_NOOP;

 intel_ring_advance(rq, cs);

 ret = rq->engine->emit_flush(rq, EMIT_BARRIER);
 if (ret)
  return ret;

 return 0;
}
