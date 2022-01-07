
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int flags; } ;


 int I915_ENGINE_HAS_PREEMPTION ;

__attribute__((used)) static inline bool
intel_engine_has_preemption(const struct intel_engine_cs *engine)
{
 return engine->flags & I915_ENGINE_HAS_PREEMPTION;
}
