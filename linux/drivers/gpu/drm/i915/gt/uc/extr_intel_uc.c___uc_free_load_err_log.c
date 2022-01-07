
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uc {int load_err_log; } ;
struct drm_i915_gem_object {int dummy; } ;


 struct drm_i915_gem_object* fetch_and_zero (int *) ;
 int i915_gem_object_put (struct drm_i915_gem_object*) ;

__attribute__((used)) static void __uc_free_load_err_log(struct intel_uc *uc)
{
 struct drm_i915_gem_object *log = fetch_and_zero(&uc->load_err_log);

 if (log)
  i915_gem_object_put(log);
}
