
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {struct drm_i915_private* i915; } ;
struct i915_wa_list {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 int COMMON_SLICE_CHICKEN2 ;
 int GEN7_HALF_SLICE_CHICKEN1 ;
 int GEN7_SBE_SS_CACHE_DISPATCH_PORT_SHARING_DISABLE ;
 int GEN8_SBE_DISABLE_REPLAY_BUF_OPTIMIZATION ;
 scalar_t__ IS_KBL_REVID (struct drm_i915_private*,int ,int ) ;
 int KBL_REVID_C0 ;
 int REVID_FOREVER ;
 int WA_SET_BIT_MASKED (int ,int ) ;
 int gen9_ctx_workarounds_init (struct intel_engine_cs*,struct i915_wa_list*) ;

__attribute__((used)) static void kbl_ctx_workarounds_init(struct intel_engine_cs *engine,
         struct i915_wa_list *wal)
{
 struct drm_i915_private *i915 = engine->i915;

 gen9_ctx_workarounds_init(engine, wal);


 if (IS_KBL_REVID(i915, KBL_REVID_C0, REVID_FOREVER))
  WA_SET_BIT_MASKED(COMMON_SLICE_CHICKEN2,
      GEN8_SBE_DISABLE_REPLAY_BUF_OPTIMIZATION);


 WA_SET_BIT_MASKED(GEN7_HALF_SLICE_CHICKEN1,
     GEN7_SBE_SS_CACHE_DISPATCH_PORT_SHARING_DISABLE);
}
