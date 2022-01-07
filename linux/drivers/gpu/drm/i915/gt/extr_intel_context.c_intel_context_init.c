
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_engine_cs {int sseu; scalar_t__ cops; TYPE_2__* gt; } ;
struct intel_context {int active; int pin_mutex; int signals; int signal_link; int ring; int sseu; scalar_t__ ops; struct intel_engine_cs* engine; int timeline; int vm; struct i915_gem_context* gem_context; int ref; } ;
struct i915_gem_context {int i915; scalar_t__ timeline; scalar_t__ vm; } ;
struct TYPE_4__ {TYPE_1__* ggtt; } ;
struct TYPE_3__ {int vm; } ;


 int GEM_BUG_ON (int) ;
 int INIT_LIST_HEAD (int *) ;
 int SZ_16K ;
 int __intel_context_active ;
 int __intel_context_retire ;
 int __intel_context_ring_size (int ) ;
 int i915_active_init (int ,int *,int ,int ) ;
 int i915_vm_get (int *) ;
 int intel_timeline_get (scalar_t__) ;
 int kref_init (int *) ;
 int mutex_init (int *) ;

void
intel_context_init(struct intel_context *ce,
     struct i915_gem_context *ctx,
     struct intel_engine_cs *engine)
{
 GEM_BUG_ON(!engine->cops);

 kref_init(&ce->ref);

 ce->gem_context = ctx;
 ce->vm = i915_vm_get(ctx->vm ?: &engine->gt->ggtt->vm);
 if (ctx->timeline)
  ce->timeline = intel_timeline_get(ctx->timeline);

 ce->engine = engine;
 ce->ops = engine->cops;
 ce->sseu = engine->sseu;
 ce->ring = __intel_context_ring_size(SZ_16K);

 INIT_LIST_HEAD(&ce->signal_link);
 INIT_LIST_HEAD(&ce->signals);

 mutex_init(&ce->pin_mutex);

 i915_active_init(ctx->i915, &ce->active,
    __intel_context_active, __intel_context_retire);
}
