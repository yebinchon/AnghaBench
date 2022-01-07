
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_runtime_info {int sseu; } ;
struct intel_driver_caps {int dummy; } ;
struct intel_device_info {int dummy; } ;
struct drm_printer {int dummy; } ;
struct drm_i915_error_state_buf {int dummy; } ;


 struct drm_printer i915_error_printer (struct drm_i915_error_state_buf*) ;
 int intel_device_info_dump_flags (struct intel_device_info const*,struct drm_printer*) ;
 int intel_device_info_dump_topology (int *,struct drm_printer*) ;
 int intel_driver_caps_print (struct intel_driver_caps const*,struct drm_printer*) ;

__attribute__((used)) static void err_print_capabilities(struct drm_i915_error_state_buf *m,
       const struct intel_device_info *info,
       const struct intel_runtime_info *runtime,
       const struct intel_driver_caps *caps)
{
 struct drm_printer p = i915_error_printer(m);

 intel_device_info_dump_flags(info, &p);
 intel_driver_caps_print(caps, &p);
 intel_device_info_dump_topology(&runtime->sseu, &p);
}
