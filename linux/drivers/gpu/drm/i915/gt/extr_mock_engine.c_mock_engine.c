
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int finish; int reset; int prepare; } ;
struct TYPE_3__ {void* addr; } ;
struct intel_engine_cs {int id; int instance; int cancel_requests; TYPE_2__ reset; int submit_request; int emit_fini_breadcrumb; int emit_flush; int request_alloc; int * cops; TYPE_1__ status_page; int mask; int name; int * gt; struct drm_i915_private* i915; } ;
struct mock_engine {struct intel_engine_cs base; int hw_queue; int hw_delay; int hw_lock; } ;
struct drm_i915_private {int gt; } ;


 int BIT (int) ;
 int GEM_BUG_ON (int) ;
 int GFP_KERNEL ;
 int I915_NUM_ENGINES ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ PAGE_SIZE ;
 int hw_delay_complete ;
 int intel_engine_add_user (struct intel_engine_cs*) ;
 struct mock_engine* kzalloc (scalar_t__,int ) ;
 int mock_cancel_requests ;
 int mock_context_ops ;
 int mock_emit_breadcrumb ;
 int mock_emit_flush ;
 int mock_request_alloc ;
 int mock_reset ;
 int mock_reset_finish ;
 int mock_reset_prepare ;
 int mock_submit_request ;
 int snprintf (int ,int,char*,char const*) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

struct intel_engine_cs *mock_engine(struct drm_i915_private *i915,
        const char *name,
        int id)
{
 struct mock_engine *engine;

 GEM_BUG_ON(id >= I915_NUM_ENGINES);

 engine = kzalloc(sizeof(*engine) + PAGE_SIZE, GFP_KERNEL);
 if (!engine)
  return ((void*)0);


 engine->base.i915 = i915;
 engine->base.gt = &i915->gt;
 snprintf(engine->base.name, sizeof(engine->base.name), "%s", name);
 engine->base.id = id;
 engine->base.mask = BIT(id);
 engine->base.instance = id;
 engine->base.status_page.addr = (void *)(engine + 1);

 engine->base.cops = &mock_context_ops;
 engine->base.request_alloc = mock_request_alloc;
 engine->base.emit_flush = mock_emit_flush;
 engine->base.emit_fini_breadcrumb = mock_emit_breadcrumb;
 engine->base.submit_request = mock_submit_request;

 engine->base.reset.prepare = mock_reset_prepare;
 engine->base.reset.reset = mock_reset;
 engine->base.reset.finish = mock_reset_finish;
 engine->base.cancel_requests = mock_cancel_requests;


 spin_lock_init(&engine->hw_lock);
 timer_setup(&engine->hw_delay, hw_delay_complete, 0);
 INIT_LIST_HEAD(&engine->hw_queue);

 intel_engine_add_user(&engine->base);

 return &engine->base;
}
