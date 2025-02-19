
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct i915_vma* vma; } ;
struct intel_engine_cs {TYPE_1__ wa_ctx; TYPE_3__* gt; int i915; } ;
struct i915_vma {int dummy; } ;
typedef struct i915_vma drm_i915_gem_object ;
struct TYPE_6__ {TYPE_2__* ggtt; } ;
struct TYPE_5__ {int vm; } ;


 int CTX_WA_BB_OBJ_SIZE ;
 scalar_t__ IS_ERR (struct i915_vma*) ;
 int PIN_GLOBAL ;
 int PIN_HIGH ;
 int PTR_ERR (struct i915_vma*) ;
 struct i915_vma* i915_gem_object_create_shmem (int ,int ) ;
 int i915_gem_object_put (struct i915_vma*) ;
 struct i915_vma* i915_vma_instance (struct i915_vma*,int *,int *) ;
 int i915_vma_pin (struct i915_vma*,int ,int ,int) ;

__attribute__((used)) static int lrc_setup_wa_ctx(struct intel_engine_cs *engine)
{
 struct drm_i915_gem_object *obj;
 struct i915_vma *vma;
 int err;

 obj = i915_gem_object_create_shmem(engine->i915, CTX_WA_BB_OBJ_SIZE);
 if (IS_ERR(obj))
  return PTR_ERR(obj);

 vma = i915_vma_instance(obj, &engine->gt->ggtt->vm, ((void*)0));
 if (IS_ERR(vma)) {
  err = PTR_ERR(vma);
  goto err;
 }

 err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL | PIN_HIGH);
 if (err)
  goto err;

 engine->wa_ctx.vma = vma;
 return 0;

err:
 i915_gem_object_put(obj);
 return err;
}
