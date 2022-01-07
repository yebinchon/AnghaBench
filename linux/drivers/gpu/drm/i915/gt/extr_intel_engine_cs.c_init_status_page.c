
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {void* vma; int addr; } ;
struct intel_engine_cs {int i915; TYPE_3__ status_page; TYPE_2__* gt; } ;
typedef void i915_vma ;
typedef void drm_i915_gem_object ;
struct TYPE_5__ {TYPE_1__* ggtt; } ;
struct TYPE_4__ {int vm; } ;


 int DRM_ERROR (char*) ;
 int HWS_NEEDS_PHYSICAL (int ) ;
 int I915_CACHE_LLC ;
 int I915_MAP_WB ;
 scalar_t__ IS_ERR (void*) ;
 int PAGE_SIZE ;
 int PTR_ERR (void*) ;
 void* i915_gem_object_create_internal (int ,int ) ;
 void* i915_gem_object_pin_map (void*,int ) ;
 int i915_gem_object_put (void*) ;
 int i915_gem_object_set_cache_coherency (void*,int ) ;
 int i915_gem_object_unpin_map (void*) ;
 void* i915_vma_instance (void*,int *,int *) ;
 int memset (void*,int ,int ) ;
 int pin_ggtt_status_page (struct intel_engine_cs*,void*) ;

__attribute__((used)) static int init_status_page(struct intel_engine_cs *engine)
{
 struct drm_i915_gem_object *obj;
 struct i915_vma *vma;
 void *vaddr;
 int ret;
 obj = i915_gem_object_create_internal(engine->i915, PAGE_SIZE);
 if (IS_ERR(obj)) {
  DRM_ERROR("Failed to allocate status page\n");
  return PTR_ERR(obj);
 }

 i915_gem_object_set_cache_coherency(obj, I915_CACHE_LLC);

 vma = i915_vma_instance(obj, &engine->gt->ggtt->vm, ((void*)0));
 if (IS_ERR(vma)) {
  ret = PTR_ERR(vma);
  goto err;
 }

 vaddr = i915_gem_object_pin_map(obj, I915_MAP_WB);
 if (IS_ERR(vaddr)) {
  ret = PTR_ERR(vaddr);
  goto err;
 }

 engine->status_page.addr = memset(vaddr, 0, PAGE_SIZE);
 engine->status_page.vma = vma;

 if (!HWS_NEEDS_PHYSICAL(engine->i915)) {
  ret = pin_ggtt_status_page(engine, vma);
  if (ret)
   goto err_unpin;
 }

 return 0;

err_unpin:
 i915_gem_object_unpin_map(obj);
err:
 i915_gem_object_put(obj);
 return ret;
}
