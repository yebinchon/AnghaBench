
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sg_table {int dummy; } ;
struct intel_context {int vm; } ;
struct i915_sleeve {int dummy; } ;
struct i915_page_sizes {int dummy; } ;
struct TYPE_2__ {int resv; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;
struct clear_pages_work {int wait; int dma; int irq_work; int work; struct intel_context* ce; struct i915_sleeve* sleeve; int value; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int I915_FENCE_GFP ;
 int I915_FENCE_TIMEOUT ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (struct i915_sleeve*) ;
 int PTR_ERR (struct i915_sleeve*) ;
 int clear_pages_signal_irq_worker ;
 int clear_pages_work_notify ;
 int clear_pages_work_ops ;
 int clear_pages_worker ;
 struct i915_sleeve* create_sleeve (int ,struct drm_i915_gem_object*,struct sg_table*,struct i915_page_sizes*) ;
 int destroy_sleeve (struct i915_sleeve*) ;
 int dma_fence_get (int *) ;
 int dma_fence_init (int *,int *,int *,int ,int ) ;
 int dma_fence_set_error (int *,int) ;
 int dma_resv_add_excl_fence (int ,int *) ;
 int fence_lock ;
 int i915_gem_object_lock (struct drm_i915_gem_object*) ;
 int i915_gem_object_unlock (struct drm_i915_gem_object*) ;
 int i915_sw_fence_await_reservation (int *,int ,int *,int,int ,int ) ;
 int i915_sw_fence_commit (int *) ;
 int i915_sw_fence_init (int *,int ) ;
 int init_irq_work (int *,int ) ;
 struct clear_pages_work* kmalloc (int,int ) ;

int i915_gem_schedule_fill_pages_blt(struct drm_i915_gem_object *obj,
         struct intel_context *ce,
         struct sg_table *pages,
         struct i915_page_sizes *page_sizes,
         u32 value)
{
 struct clear_pages_work *work;
 struct i915_sleeve *sleeve;
 int err;

 sleeve = create_sleeve(ce->vm, obj, pages, page_sizes);
 if (IS_ERR(sleeve))
  return PTR_ERR(sleeve);

 work = kmalloc(sizeof(*work), GFP_KERNEL);
 if (!work) {
  destroy_sleeve(sleeve);
  return -ENOMEM;
 }

 work->value = value;
 work->sleeve = sleeve;
 work->ce = ce;

 INIT_WORK(&work->work, clear_pages_worker);

 init_irq_work(&work->irq_work, clear_pages_signal_irq_worker);

 dma_fence_init(&work->dma, &clear_pages_work_ops, &fence_lock, 0, 0);
 i915_sw_fence_init(&work->wait, clear_pages_work_notify);

 i915_gem_object_lock(obj);
 err = i915_sw_fence_await_reservation(&work->wait,
           obj->base.resv, ((void*)0),
           1, I915_FENCE_TIMEOUT,
           I915_FENCE_GFP);
 if (err < 0) {
  dma_fence_set_error(&work->dma, err);
 } else {
  dma_resv_add_excl_fence(obj->base.resv, &work->dma);
  err = 0;
 }
 i915_gem_object_unlock(obj);

 dma_fence_get(&work->dma);
 i915_sw_fence_commit(&work->wait);

 return err;
}
