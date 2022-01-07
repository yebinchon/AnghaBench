
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int context_size; } ;


 int CONFIG_DRM_I915_DEBUG_GEM ;
 int I915_GTT_PAGE_SIZE ;
 int IS_ENABLED (int ) ;
 int LRC_HEADER_PAGES ;
 int PAGE_SIZE ;
 int POISON_INUSE ;
 int memset (void*,int ,int ) ;

__attribute__((used)) static void
set_redzone(void *vaddr, const struct intel_engine_cs *engine)
{
 if (!IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
  return;

 vaddr += LRC_HEADER_PAGES * PAGE_SIZE;
 vaddr += engine->context_size;

 memset(vaddr, POISON_INUSE, I915_GTT_PAGE_SIZE);
}
