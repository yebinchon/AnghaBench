
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {scalar_t__ class; int name; struct drm_i915_private* i915; } ;
struct i915_wa_list {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_BROADWELL (struct drm_i915_private*) ;
 scalar_t__ IS_BROXTON (struct drm_i915_private*) ;
 scalar_t__ IS_CANNONLAKE (struct drm_i915_private*) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_COFFEELAKE (struct drm_i915_private*) ;
 scalar_t__ IS_GEMINILAKE (struct drm_i915_private*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 scalar_t__ IS_KABYLAKE (struct drm_i915_private*) ;
 scalar_t__ IS_SKYLAKE (struct drm_i915_private*) ;
 int MISSING_CASE (int) ;
 scalar_t__ RENDER_CLASS ;
 int bdw_ctx_workarounds_init (struct intel_engine_cs*,struct i915_wa_list*) ;
 int bxt_ctx_workarounds_init (struct intel_engine_cs*,struct i915_wa_list*) ;
 int cfl_ctx_workarounds_init (struct intel_engine_cs*,struct i915_wa_list*) ;
 int chv_ctx_workarounds_init (struct intel_engine_cs*,struct i915_wa_list*) ;
 int cnl_ctx_workarounds_init (struct intel_engine_cs*,struct i915_wa_list*) ;
 int glk_ctx_workarounds_init (struct intel_engine_cs*,struct i915_wa_list*) ;
 int icl_ctx_workarounds_init (struct intel_engine_cs*,struct i915_wa_list*) ;
 int kbl_ctx_workarounds_init (struct intel_engine_cs*,struct i915_wa_list*) ;
 int skl_ctx_workarounds_init (struct intel_engine_cs*,struct i915_wa_list*) ;
 int tgl_ctx_workarounds_init (struct intel_engine_cs*,struct i915_wa_list*) ;
 int wa_init_finish (struct i915_wa_list*) ;
 int wa_init_start (struct i915_wa_list*,char const*,int ) ;

__attribute__((used)) static void
__intel_engine_init_ctx_wa(struct intel_engine_cs *engine,
      struct i915_wa_list *wal,
      const char *name)
{
 struct drm_i915_private *i915 = engine->i915;

 if (engine->class != RENDER_CLASS)
  return;

 wa_init_start(wal, name, engine->name);

 if (IS_GEN(i915, 12))
  tgl_ctx_workarounds_init(engine, wal);
 else if (IS_GEN(i915, 11))
  icl_ctx_workarounds_init(engine, wal);
 else if (IS_CANNONLAKE(i915))
  cnl_ctx_workarounds_init(engine, wal);
 else if (IS_COFFEELAKE(i915))
  cfl_ctx_workarounds_init(engine, wal);
 else if (IS_GEMINILAKE(i915))
  glk_ctx_workarounds_init(engine, wal);
 else if (IS_KABYLAKE(i915))
  kbl_ctx_workarounds_init(engine, wal);
 else if (IS_BROXTON(i915))
  bxt_ctx_workarounds_init(engine, wal);
 else if (IS_SKYLAKE(i915))
  skl_ctx_workarounds_init(engine, wal);
 else if (IS_CHERRYVIEW(i915))
  chv_ctx_workarounds_init(engine, wal);
 else if (IS_BROADWELL(i915))
  bdw_ctx_workarounds_init(engine, wal);
 else if (INTEL_GEN(i915) < 8)
  return;
 else
  MISSING_CASE(INTEL_GEN(i915));

 wa_init_finish(wal);
}
