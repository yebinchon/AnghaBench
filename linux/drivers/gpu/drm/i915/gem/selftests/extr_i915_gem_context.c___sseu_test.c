
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_sseu {int slice_mask; } ;
struct intel_context {int dummy; } ;
struct igt_spinner {int dummy; } ;
struct drm_i915_gem_object {int dummy; } ;


 int __intel_context_reconfigure_sseu (struct intel_context*,struct intel_sseu) ;
 int __sseu_finish (char const*,unsigned int,struct intel_context*,struct drm_i915_gem_object*,int ,struct igt_spinner*) ;
 int __sseu_prepare (char const*,unsigned int,struct intel_context*,struct igt_spinner**) ;
 int hweight32 (int ) ;
 int igt_spinner_end (struct igt_spinner*) ;
 int igt_spinner_fini (struct igt_spinner*) ;
 int kfree (struct igt_spinner*) ;

__attribute__((used)) static int
__sseu_test(const char *name,
     unsigned int flags,
     struct intel_context *ce,
     struct drm_i915_gem_object *obj,
     struct intel_sseu sseu)
{
 struct igt_spinner *spin = ((void*)0);
 int ret;

 ret = __sseu_prepare(name, flags, ce, &spin);
 if (ret)
  return ret;

 ret = __intel_context_reconfigure_sseu(ce, sseu);
 if (ret)
  goto out_spin;

 ret = __sseu_finish(name, flags, ce, obj,
       hweight32(sseu.slice_mask), spin);

out_spin:
 if (spin) {
  igt_spinner_end(spin);
  igt_spinner_fini(spin);
  kfree(spin);
 }
 return ret;
}
