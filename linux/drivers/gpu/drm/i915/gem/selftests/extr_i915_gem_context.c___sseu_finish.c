
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct intel_context {TYPE_2__* engine; } ;
struct igt_spinner {int dummy; } ;
struct drm_i915_gem_object {int dummy; } ;
struct TYPE_3__ {int slice_mask; } ;
struct TYPE_4__ {int i915; struct intel_context* kernel_context; TYPE_1__ sseu; } ;


 int MAX_SCHEDULE_TIMEOUT ;
 unsigned int TEST_IDLE ;
 unsigned int TEST_RESET ;
 int __check_rpcs (char const*,int ,int,unsigned int,char*,char*) ;
 int __read_slice_count (struct intel_context*,struct drm_i915_gem_object*,struct igt_spinner*,int *) ;
 unsigned int hweight32 (int ) ;
 int i915_gem_wait_for_idle (int ,int ,int ) ;
 int igt_spinner_end (struct igt_spinner*) ;
 int intel_engine_reset (TYPE_2__*,char*) ;

__attribute__((used)) static int
__sseu_finish(const char *name,
       unsigned int flags,
       struct intel_context *ce,
       struct drm_i915_gem_object *obj,
       unsigned int expected,
       struct igt_spinner *spin)
{
 unsigned int slices = hweight32(ce->engine->sseu.slice_mask);
 u32 rpcs = 0;
 int ret = 0;

 if (flags & TEST_RESET) {
  ret = intel_engine_reset(ce->engine, "sseu");
  if (ret)
   goto out;
 }

 ret = __read_slice_count(ce, obj,
     flags & TEST_RESET ? ((void*)0) : spin, &rpcs);
 ret = __check_rpcs(name, rpcs, ret, expected, "Context", "!");
 if (ret)
  goto out;

 ret = __read_slice_count(ce->engine->kernel_context, obj, ((void*)0), &rpcs);
 ret = __check_rpcs(name, rpcs, ret, slices, "Kernel context", "!");

out:
 if (spin)
  igt_spinner_end(spin);

 if ((flags & TEST_IDLE) && ret == 0) {
  ret = i915_gem_wait_for_idle(ce->engine->i915,
          0, MAX_SCHEDULE_TIMEOUT);
  if (ret)
   return ret;

  ret = __read_slice_count(ce, obj, ((void*)0), &rpcs);
  ret = __check_rpcs(name, rpcs, ret, expected,
       "Context", " after idle!");
 }

 return ret;
}
