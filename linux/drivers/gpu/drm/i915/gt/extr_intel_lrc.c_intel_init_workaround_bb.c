
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* (* wa_bb_func_t ) (struct intel_engine_cs*,void*) ;
struct page {int dummy; } ;
struct i915_wa_ctx_bb {int offset; int size; } ;
struct i915_ctx_workarounds {TYPE_1__* vma; struct i915_wa_ctx_bb per_ctx; struct i915_wa_ctx_bb indirect_ctx; } ;
struct intel_engine_cs {scalar_t__ class; int i915; struct i915_ctx_workarounds wa_ctx; } ;
struct TYPE_2__ {int obj; } ;


 unsigned int ARRAY_SIZE (void* (*) (struct intel_engine_cs*,void*)) ;
 int BUG_ON (int) ;
 int CACHELINE_BYTES ;
 int CTX_WA_BB_OBJ_SIZE ;
 int DRM_DEBUG_DRIVER (char*,int) ;
 int EINVAL ;
 scalar_t__ GEM_DEBUG_WARN_ON (int) ;
 int INTEL_GEN (int ) ;
 int IS_ALIGNED (int,int ) ;
 int MISSING_CASE (int) ;
 scalar_t__ RENDER_CLASS ;
 void* gen10_init_indirectctx_bb (struct intel_engine_cs*,void*) ;
 void* gen8_init_indirectctx_bb (struct intel_engine_cs*,void*) ;
 void* gen9_init_indirectctx_bb (struct intel_engine_cs*,void*) ;
 struct page* i915_gem_object_get_dirty_page (int ,int ) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 int lrc_destroy_wa_ctx (struct intel_engine_cs*) ;
 int lrc_setup_wa_ctx (struct intel_engine_cs*) ;
 void* stub1 (struct intel_engine_cs*,void*) ;

__attribute__((used)) static int intel_init_workaround_bb(struct intel_engine_cs *engine)
{
 struct i915_ctx_workarounds *wa_ctx = &engine->wa_ctx;
 struct i915_wa_ctx_bb *wa_bb[2] = { &wa_ctx->indirect_ctx,
         &wa_ctx->per_ctx };
 wa_bb_func_t wa_bb_fn[2];
 struct page *page;
 void *batch, *batch_ptr;
 unsigned int i;
 int ret;

 if (engine->class != RENDER_CLASS)
  return 0;

 switch (INTEL_GEN(engine->i915)) {
 case 12:
 case 11:
  return 0;
 case 10:
  wa_bb_fn[0] = gen10_init_indirectctx_bb;
  wa_bb_fn[1] = ((void*)0);
  break;
 case 9:
  wa_bb_fn[0] = gen9_init_indirectctx_bb;
  wa_bb_fn[1] = ((void*)0);
  break;
 case 8:
  wa_bb_fn[0] = gen8_init_indirectctx_bb;
  wa_bb_fn[1] = ((void*)0);
  break;
 default:
  MISSING_CASE(INTEL_GEN(engine->i915));
  return 0;
 }

 ret = lrc_setup_wa_ctx(engine);
 if (ret) {
  DRM_DEBUG_DRIVER("Failed to setup context WA page: %d\n", ret);
  return ret;
 }

 page = i915_gem_object_get_dirty_page(wa_ctx->vma->obj, 0);
 batch = batch_ptr = kmap_atomic(page);






 for (i = 0; i < ARRAY_SIZE(wa_bb_fn); i++) {
  wa_bb[i]->offset = batch_ptr - batch;
  if (GEM_DEBUG_WARN_ON(!IS_ALIGNED(wa_bb[i]->offset,
        CACHELINE_BYTES))) {
   ret = -EINVAL;
   break;
  }
  if (wa_bb_fn[i])
   batch_ptr = wa_bb_fn[i](engine, batch_ptr);
  wa_bb[i]->size = batch_ptr - (batch + wa_bb[i]->offset);
 }

 BUG_ON(batch_ptr - batch > CTX_WA_BB_OBJ_SIZE);

 kunmap_atomic(batch);
 if (ret)
  lrc_destroy_wa_ctx(engine);

 return ret;
}
