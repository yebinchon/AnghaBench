
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timeline; int ring; } ;
struct intel_engine_cs {TYPE_1__ legacy; struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;


 int ENGINE_READ (struct intel_engine_cs*,int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int MODE_IDLE ;
 int RING_MI_MODE ;
 int WARN_ON (int) ;
 int intel_engine_cleanup_common (struct intel_engine_cs*) ;
 int intel_ring_put (int ) ;
 int intel_ring_unpin (int ) ;
 int intel_timeline_put (int ) ;
 int intel_timeline_unpin (int ) ;
 int kfree (struct intel_engine_cs*) ;

__attribute__((used)) static void ring_destroy(struct intel_engine_cs *engine)
{
 struct drm_i915_private *dev_priv = engine->i915;

 WARN_ON(INTEL_GEN(dev_priv) > 2 &&
  (ENGINE_READ(engine, RING_MI_MODE) & MODE_IDLE) == 0);

 intel_engine_cleanup_common(engine);

 intel_ring_unpin(engine->legacy.ring);
 intel_ring_put(engine->legacy.ring);

 intel_timeline_unpin(engine->legacy.timeline);
 intel_timeline_put(engine->legacy.timeline);

 kfree(engine);
}
