
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct intel_context {int flags; } ;
struct TYPE_8__ {int tasklet; int queue_priority_hint; } ;
struct TYPE_12__ {int id; scalar_t__ class; int mask; int flags; int emit_fini_breadcrumb_dw; int emit_fini_breadcrumb; int emit_init_breadcrumb; int emit_flush; int emit_bb_start; int context_size; int name; int uabi_class; TYPE_1__ execlists; int bond_execute; int submit_request; int schedule; int request_alloc; int * cops; int saturated; int instance; int gt; int i915; } ;
struct virtual_engine {struct intel_context context; TYPE_5__ base; int num_siblings; struct intel_engine_cs** siblings; TYPE_4__* nodes; } ;
struct TYPE_9__ {scalar_t__ func; } ;
struct TYPE_10__ {TYPE_2__ tasklet; } ;
struct intel_engine_cs {int mask; size_t id; scalar_t__ class; int flags; int emit_fini_breadcrumb_dw; int emit_fini_breadcrumb; int emit_init_breadcrumb; int emit_flush; int emit_bb_start; int context_size; int uabi_class; TYPE_3__ execlists; int name; int gt; } ;
struct i915_gem_context {int i915; } ;
struct TYPE_11__ {int rb; } ;


 int ALL_ENGINES ;
 int CONTEXT_ALLOC_BIT ;
 int DRM_DEBUG (char*,scalar_t__,...) ;
 int EINVAL ;
 int ENGINE_VIRTUAL ;
 int ENODEV ;
 int ENOMEM ;
 struct intel_context* ERR_PTR (int) ;
 int GEM_BUG_ON (int) ;
 int GFP_KERNEL ;
 int I915_ENGINE_CLASS_INVALID ;
 int I915_ENGINE_CLASS_INVALID_VIRTUAL ;
 int I915_ENGINE_IS_VIRTUAL ;
 int INIT_LIST_HEAD (int ) ;
 int INT_MIN ;
 scalar_t__ OTHER_CLASS ;
 int RB_CLEAR_NODE (int *) ;
 int RB_EMPTY_NODE (int *) ;
 int __execlists_context_alloc (struct intel_context*,struct intel_engine_cs*) ;
 int __set_bit (int ,int *) ;
 int execlists_request_alloc ;
 scalar_t__ execlists_submission_tasklet ;
 int i915_schedule ;
 struct intel_context* intel_context_create (struct i915_gem_context*,struct intel_engine_cs*) ;
 int intel_context_init (struct intel_context*,struct i915_gem_context*,TYPE_5__*) ;
 int intel_context_put (struct intel_context*) ;
 int intel_engine_init_active (TYPE_5__*,int ) ;
 int intel_engine_init_execlists (TYPE_5__*) ;
 int is_power_of_2 (int) ;
 struct virtual_engine* kzalloc (int ,int ) ;
 int snprintf (int ,int,char*,...) ;
 int struct_size (struct virtual_engine*,struct intel_engine_cs**,unsigned int) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int virtual_bond_execute ;
 int virtual_context_ops ;
 int virtual_queue (struct virtual_engine*) ;
 int virtual_submission_tasklet ;
 int virtual_submit_request ;

struct intel_context *
intel_execlists_create_virtual(struct i915_gem_context *ctx,
          struct intel_engine_cs **siblings,
          unsigned int count)
{
 struct virtual_engine *ve;
 unsigned int n;
 int err;

 if (count == 0)
  return ERR_PTR(-EINVAL);

 if (count == 1)
  return intel_context_create(ctx, siblings[0]);

 ve = kzalloc(struct_size(ve, siblings, count), GFP_KERNEL);
 if (!ve)
  return ERR_PTR(-ENOMEM);

 ve->base.i915 = ctx->i915;
 ve->base.gt = siblings[0]->gt;
 ve->base.id = -1;
 ve->base.class = OTHER_CLASS;
 ve->base.uabi_class = I915_ENGINE_CLASS_INVALID;
 ve->base.instance = I915_ENGINE_CLASS_INVALID_VIRTUAL;
 ve->base.saturated = ALL_ENGINES;

 snprintf(ve->base.name, sizeof(ve->base.name), "virtual");

 intel_engine_init_active(&ve->base, ENGINE_VIRTUAL);

 intel_engine_init_execlists(&ve->base);

 ve->base.cops = &virtual_context_ops;
 ve->base.request_alloc = execlists_request_alloc;

 ve->base.schedule = i915_schedule;
 ve->base.submit_request = virtual_submit_request;
 ve->base.bond_execute = virtual_bond_execute;

 INIT_LIST_HEAD(virtual_queue(ve));
 ve->base.execlists.queue_priority_hint = INT_MIN;
 tasklet_init(&ve->base.execlists.tasklet,
       virtual_submission_tasklet,
       (unsigned long)ve);

 intel_context_init(&ve->context, ctx, &ve->base);

 for (n = 0; n < count; n++) {
  struct intel_engine_cs *sibling = siblings[n];

  GEM_BUG_ON(!is_power_of_2(sibling->mask));
  if (sibling->mask & ve->base.mask) {
   DRM_DEBUG("duplicate %s entry in load balancer\n",
      sibling->name);
   err = -EINVAL;
   goto err_put;
  }
  if (sibling->execlists.tasklet.func !=
      execlists_submission_tasklet) {
   err = -ENODEV;
   goto err_put;
  }

  GEM_BUG_ON(RB_EMPTY_NODE(&ve->nodes[sibling->id].rb));
  RB_CLEAR_NODE(&ve->nodes[sibling->id].rb);

  ve->siblings[ve->num_siblings++] = sibling;
  ve->base.mask |= sibling->mask;
  if (ve->base.class != OTHER_CLASS) {
   if (ve->base.class != sibling->class) {
    DRM_DEBUG("invalid mixing of engine class, sibling %d, already %d\n",
       sibling->class, ve->base.class);
    err = -EINVAL;
    goto err_put;
   }
   continue;
  }

  ve->base.class = sibling->class;
  ve->base.uabi_class = sibling->uabi_class;
  snprintf(ve->base.name, sizeof(ve->base.name),
    "v%dx%d", ve->base.class, count);
  ve->base.context_size = sibling->context_size;

  ve->base.emit_bb_start = sibling->emit_bb_start;
  ve->base.emit_flush = sibling->emit_flush;
  ve->base.emit_init_breadcrumb = sibling->emit_init_breadcrumb;
  ve->base.emit_fini_breadcrumb = sibling->emit_fini_breadcrumb;
  ve->base.emit_fini_breadcrumb_dw =
   sibling->emit_fini_breadcrumb_dw;

  ve->base.flags = sibling->flags;
 }

 ve->base.flags |= I915_ENGINE_IS_VIRTUAL;

 err = __execlists_context_alloc(&ve->context, siblings[0]);
 if (err)
  goto err_put;

 __set_bit(CONTEXT_ALLOC_BIT, &ve->context.flags);

 return &ve->context;

err_put:
 intel_context_put(&ve->context);
 return ERR_PTR(err);
}
