
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;


 int ASYNC_FLIP_PERF_DISABLE ;
 int CACHE_MODE_0 ;
 int CM0_STC_EVICT_DISABLE_LRA_SNB ;
 int ECOSKPD ;
 int ECO_CONSTANT_BUFFER_SR_DISABLE ;
 int GFX_MODE ;
 int GFX_MODE_GEN7 ;
 int GFX_REPLAY_MODE ;
 int GFX_TLB_INVALIDATE_EXPLICIT ;
 int I915_WRITE (int ,int) ;
 int INSTPM ;
 int INSTPM_FORCE_ORDERING ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 scalar_t__ IS_GEN_RANGE (struct drm_i915_private*,int,int) ;
 int MI_MODE ;
 int VS_TIMER_DISPATCH ;
 int _MASKED_BIT_DISABLE (int ) ;
 int _MASKED_BIT_ENABLE (int ) ;
 int xcs_resume (struct intel_engine_cs*) ;

__attribute__((used)) static int rcs_resume(struct intel_engine_cs *engine)
{
 struct drm_i915_private *dev_priv = engine->i915;
 if (IS_GEN(dev_priv, 4))
  I915_WRITE(ECOSKPD,
      _MASKED_BIT_ENABLE(ECO_CONSTANT_BUFFER_SR_DISABLE));


 if (IS_GEN_RANGE(dev_priv, 4, 6))
  I915_WRITE(MI_MODE, _MASKED_BIT_ENABLE(VS_TIMER_DISPATCH));







 if (IS_GEN_RANGE(dev_priv, 6, 7))
  I915_WRITE(MI_MODE, _MASKED_BIT_ENABLE(ASYNC_FLIP_PERF_DISABLE));



 if (IS_GEN(dev_priv, 6))
  I915_WRITE(GFX_MODE,
      _MASKED_BIT_ENABLE(GFX_TLB_INVALIDATE_EXPLICIT));


 if (IS_GEN(dev_priv, 7))
  I915_WRITE(GFX_MODE_GEN7,
      _MASKED_BIT_ENABLE(GFX_TLB_INVALIDATE_EXPLICIT) |
      _MASKED_BIT_ENABLE(GFX_REPLAY_MODE));

 if (IS_GEN(dev_priv, 6)) {





  I915_WRITE(CACHE_MODE_0,
      _MASKED_BIT_DISABLE(CM0_STC_EVICT_DISABLE_LRA_SNB));
 }

 if (IS_GEN_RANGE(dev_priv, 6, 7))
  I915_WRITE(INSTPM, _MASKED_BIT_ENABLE(INSTPM_FORCE_ORDERING));

 return xcs_resume(engine);
}
