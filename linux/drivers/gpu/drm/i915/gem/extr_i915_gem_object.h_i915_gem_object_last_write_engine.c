
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_engine_cs {int dummy; } ;
struct TYPE_3__ {int resv; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;
struct dma_fence {int dummy; } ;
struct TYPE_4__ {struct intel_engine_cs* engine; } ;


 scalar_t__ dma_fence_is_i915 (struct dma_fence*) ;
 int dma_fence_is_signaled (struct dma_fence*) ;
 int dma_fence_put (struct dma_fence*) ;
 struct dma_fence* dma_resv_get_excl_rcu (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 TYPE_2__* to_request (struct dma_fence*) ;

__attribute__((used)) static inline struct intel_engine_cs *
i915_gem_object_last_write_engine(struct drm_i915_gem_object *obj)
{
 struct intel_engine_cs *engine = ((void*)0);
 struct dma_fence *fence;

 rcu_read_lock();
 fence = dma_resv_get_excl_rcu(obj->base.resv);
 rcu_read_unlock();

 if (fence && dma_fence_is_i915(fence) && !dma_fence_is_signaled(fence))
  engine = to_request(fence)->engine;
 dma_fence_put(fence);

 return engine;
}
