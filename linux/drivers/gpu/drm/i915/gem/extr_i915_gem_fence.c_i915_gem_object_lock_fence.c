
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dma_fence {int dummy; } ;
struct TYPE_5__ {int lock; } ;
struct TYPE_7__ {TYPE_1__ wait; } ;
struct stub_fence {struct dma_fence dma; TYPE_3__ chain; } ;
struct TYPE_6__ {int resv; } ;
struct drm_i915_gem_object {TYPE_2__ base; } ;


 int GFP_KERNEL ;
 int I915_FENCE_GFP ;
 int I915_FENCE_TIMEOUT ;
 int assert_object_held (struct drm_i915_gem_object*) ;
 int dma_fence_init (struct dma_fence*,int *,int *,int ,int ) ;
 int dma_resv_add_excl_fence (int ,struct dma_fence*) ;
 scalar_t__ i915_sw_fence_await_reservation (TYPE_3__*,int ,int *,int,int ,int ) ;
 int i915_sw_fence_init (TYPE_3__*,int ) ;
 struct stub_fence* kmalloc (int,int ) ;
 int stub_fence_ops ;
 int stub_notify ;
 int stub_release (struct dma_fence*) ;

struct dma_fence *
i915_gem_object_lock_fence(struct drm_i915_gem_object *obj)
{
 struct stub_fence *stub;

 assert_object_held(obj);

 stub = kmalloc(sizeof(*stub), GFP_KERNEL);
 if (!stub)
  return ((void*)0);

 i915_sw_fence_init(&stub->chain, stub_notify);
 dma_fence_init(&stub->dma, &stub_fence_ops, &stub->chain.wait.lock,
         0, 0);

 if (i915_sw_fence_await_reservation(&stub->chain,
         obj->base.resv, ((void*)0),
         1, I915_FENCE_TIMEOUT,
         I915_FENCE_GFP) < 0)
  goto err;

 dma_resv_add_excl_fence(obj->base.resv, &stub->dma);

 return &stub->dma;

err:
 stub_release(&stub->dma);
 return ((void*)0);
}
