
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* addr; } ;
struct intel_engine_cs {TYPE_1__ status_page; } ;


 size_t I915_GEM_HWS_PREEMPT ;
 int wmb () ;

__attribute__((used)) static inline void
ring_set_paused(const struct intel_engine_cs *engine, int state)
{






 engine->status_page.addr[I915_GEM_HWS_PREEMPT] = state;
 if (state)
  wmb();
}
