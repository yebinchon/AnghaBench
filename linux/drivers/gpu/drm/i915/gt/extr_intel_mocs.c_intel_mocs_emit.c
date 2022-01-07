
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_request {TYPE_1__* engine; int i915; } ;
struct drm_i915_mocs_table {int dummy; } ;
struct TYPE_2__ {scalar_t__ class; int gt; } ;


 scalar_t__ HAS_GLOBAL_MOCS_REGISTERS (int ) ;
 scalar_t__ RENDER_CLASS ;
 int emit_mocs_control_table (struct i915_request*,struct drm_i915_mocs_table*) ;
 int emit_mocs_l3cc_table (struct i915_request*,struct drm_i915_mocs_table*) ;
 scalar_t__ get_mocs_settings (int ,struct drm_i915_mocs_table*) ;

int intel_mocs_emit(struct i915_request *rq)
{
 struct drm_i915_mocs_table t;
 int ret;

 if (HAS_GLOBAL_MOCS_REGISTERS(rq->i915) ||
     rq->engine->class != RENDER_CLASS)
  return 0;

 if (get_mocs_settings(rq->engine->gt, &t)) {

  ret = emit_mocs_control_table(rq, &t);
  if (ret)
   return ret;


  ret = emit_mocs_l3cc_table(rq, &t);
  if (ret)
   return ret;
 }

 return 0;
}
