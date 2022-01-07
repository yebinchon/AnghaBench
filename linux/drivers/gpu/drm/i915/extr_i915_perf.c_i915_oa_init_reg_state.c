
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct intel_engine_cs {scalar_t__ class; TYPE_2__* i915; } ;
struct intel_context {int dummy; } ;
struct i915_perf_stream {int oa_config; } ;
struct TYPE_3__ {struct i915_perf_stream* exclusive_stream; } ;
struct TYPE_4__ {TYPE_1__ perf; } ;


 scalar_t__ RENDER_CLASS ;
 int gen8_update_reg_state_unlocked (struct i915_perf_stream*,struct intel_context*,int *,int ) ;

void i915_oa_init_reg_state(struct intel_engine_cs *engine,
       struct intel_context *ce,
       u32 *regs)
{
 struct i915_perf_stream *stream;

 if (engine->class != RENDER_CLASS)
  return;

 stream = engine->i915->perf.exclusive_stream;
 if (stream)
  gen8_update_reg_state_unlocked(stream, ce, regs, stream->oa_config);
}
