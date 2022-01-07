
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ execbuf_client; } ;
struct TYPE_11__ {TYPE_6__ guc; } ;
struct TYPE_7__ {int flags; } ;
struct intel_gt {TYPE_5__ uc; TYPE_1__ reset; } ;
struct intel_engine_cs {size_t uabi_class; int (* resume ) (struct intel_engine_cs*) ;int name; struct intel_gt* gt; TYPE_4__* i915; scalar_t__ id; } ;
struct TYPE_9__ {int * reset_engine_count; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_10__ {TYPE_3__ gpu_error; TYPE_2__ drm; } ;


 int DRM_DEBUG_DRIVER (char*,char*,int ,int) ;
 int GEM_BUG_ON (int) ;
 int GEM_TRACE (char*,int ,int ) ;
 scalar_t__ I915_RESET_ENGINE ;
 int __intel_engine_reset (struct intel_engine_cs*,int) ;
 int atomic_inc (int *) ;
 int dev_notice (int ,char*,int ,char const*) ;
 int intel_engine_cancel_stop_cs (struct intel_engine_cs*) ;
 int intel_engine_pm_get_if_awake (struct intel_engine_cs*) ;
 int intel_engine_pm_put (struct intel_engine_cs*) ;
 int intel_gt_reset_engine (struct intel_engine_cs*) ;
 int intel_guc_reset_engine (TYPE_6__*,struct intel_engine_cs*) ;
 int reset_finish_engine (struct intel_engine_cs*) ;
 int reset_prepare_engine (struct intel_engine_cs*) ;
 int stub1 (struct intel_engine_cs*) ;
 int test_bit (scalar_t__,int *) ;

int intel_engine_reset(struct intel_engine_cs *engine, const char *msg)
{
 struct intel_gt *gt = engine->gt;
 int ret;

 GEM_TRACE("%s flags=%lx\n", engine->name, gt->reset.flags);
 GEM_BUG_ON(!test_bit(I915_RESET_ENGINE + engine->id, &gt->reset.flags));

 if (!intel_engine_pm_get_if_awake(engine))
  return 0;

 reset_prepare_engine(engine);

 if (msg)
  dev_notice(engine->i915->drm.dev,
      "Resetting %s for %s\n", engine->name, msg);
 atomic_inc(&engine->i915->gpu_error.reset_engine_count[engine->uabi_class]);

 if (!engine->gt->uc.guc.execbuf_client)
  ret = intel_gt_reset_engine(engine);
 else
  ret = intel_guc_reset_engine(&engine->gt->uc.guc, engine);
 if (ret) {

  DRM_DEBUG_DRIVER("%sFailed to reset %s, ret=%d\n",
     engine->gt->uc.guc.execbuf_client ? "GuC " : "",
     engine->name, ret);
  goto out;
 }






 __intel_engine_reset(engine, 1);






 ret = engine->resume(engine);

out:
 intel_engine_cancel_stop_cs(engine);
 reset_finish_engine(engine);
 intel_engine_pm_put(engine);
 return ret;
}
