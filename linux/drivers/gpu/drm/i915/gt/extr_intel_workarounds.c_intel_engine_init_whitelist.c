
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_wa_list {int dummy; } ;
struct intel_engine_cs {int name; struct i915_wa_list whitelist; struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;


 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_BROXTON (struct drm_i915_private*) ;
 scalar_t__ IS_CANNONLAKE (struct drm_i915_private*) ;
 scalar_t__ IS_COFFEELAKE (struct drm_i915_private*) ;
 scalar_t__ IS_GEMINILAKE (struct drm_i915_private*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 scalar_t__ IS_KABYLAKE (struct drm_i915_private*) ;
 scalar_t__ IS_SKYLAKE (struct drm_i915_private*) ;
 int MISSING_CASE (int) ;
 int bxt_whitelist_build (struct intel_engine_cs*) ;
 int cfl_whitelist_build (struct intel_engine_cs*) ;
 int cnl_whitelist_build (struct intel_engine_cs*) ;
 int glk_whitelist_build (struct intel_engine_cs*) ;
 int icl_whitelist_build (struct intel_engine_cs*) ;
 int kbl_whitelist_build (struct intel_engine_cs*) ;
 int skl_whitelist_build (struct intel_engine_cs*) ;
 int tgl_whitelist_build (struct intel_engine_cs*) ;
 int wa_init_finish (struct i915_wa_list*) ;
 int wa_init_start (struct i915_wa_list*,char*,int ) ;

void intel_engine_init_whitelist(struct intel_engine_cs *engine)
{
 struct drm_i915_private *i915 = engine->i915;
 struct i915_wa_list *w = &engine->whitelist;

 wa_init_start(w, "whitelist", engine->name);

 if (IS_GEN(i915, 12))
  tgl_whitelist_build(engine);
 else if (IS_GEN(i915, 11))
  icl_whitelist_build(engine);
 else if (IS_CANNONLAKE(i915))
  cnl_whitelist_build(engine);
 else if (IS_COFFEELAKE(i915))
  cfl_whitelist_build(engine);
 else if (IS_GEMINILAKE(i915))
  glk_whitelist_build(engine);
 else if (IS_KABYLAKE(i915))
  kbl_whitelist_build(engine);
 else if (IS_BROXTON(i915))
  bxt_whitelist_build(engine);
 else if (IS_SKYLAKE(i915))
  skl_whitelist_build(engine);
 else if (INTEL_GEN(i915) <= 8)
  return;
 else
  MISSING_CASE(INTEL_GEN(i915));

 wa_init_finish(w);
}
