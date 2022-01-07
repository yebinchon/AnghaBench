
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_engine_cs {int name; TYPE_2__* i915; int context_size; } ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {TYPE_1__ drm; } ;


 int CONFIG_DRM_I915_DEBUG_GEM ;
 int I915_GTT_PAGE_SIZE ;
 int IS_ENABLED (int ) ;
 int LRC_HEADER_PAGES ;
 int PAGE_SIZE ;
 int POISON_INUSE ;
 int dev_err_once (int ,char*,int ) ;
 scalar_t__ memchr_inv (void const*,int ,int ) ;

__attribute__((used)) static void
check_redzone(const void *vaddr, const struct intel_engine_cs *engine)
{
 if (!IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
  return;

 vaddr += LRC_HEADER_PAGES * PAGE_SIZE;
 vaddr += engine->context_size;

 if (memchr_inv(vaddr, POISON_INUSE, I915_GTT_PAGE_SIZE))
  dev_err_once(engine->i915->drm.dev,
        "%s context redzone overwritten!\n",
        engine->name);
}
