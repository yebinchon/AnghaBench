
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
struct intel_device_info {int platform; } ;
struct drm_printer {int dummy; } ;
struct drm_i915_private {int caps; } ;


 int INTEL_GEN (struct drm_i915_private*) ;
 struct intel_device_info* INTEL_INFO (struct drm_i915_private*) ;
 int INTEL_PCH_TYPE (struct drm_i915_private*) ;
 int RUNTIME_INFO (struct drm_i915_private*) ;
 int THIS_MODULE ;
 struct drm_printer drm_seq_file_printer (struct seq_file*) ;
 int i915_modparams ;
 int i915_params_dump (int *,struct drm_printer*) ;
 int intel_device_info_dump_flags (struct intel_device_info const*,struct drm_printer*) ;
 int intel_device_info_dump_runtime (int ,struct drm_printer*) ;
 int intel_driver_caps_print (int *,struct drm_printer*) ;
 int intel_platform_name (int ) ;
 int kernel_param_lock (int ) ;
 int kernel_param_unlock (int ) ;
 struct drm_i915_private* node_to_i915 (int ) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int i915_capabilities(struct seq_file *m, void *data)
{
 struct drm_i915_private *dev_priv = node_to_i915(m->private);
 const struct intel_device_info *info = INTEL_INFO(dev_priv);
 struct drm_printer p = drm_seq_file_printer(m);

 seq_printf(m, "gen: %d\n", INTEL_GEN(dev_priv));
 seq_printf(m, "platform: %s\n", intel_platform_name(info->platform));
 seq_printf(m, "pch: %d\n", INTEL_PCH_TYPE(dev_priv));

 intel_device_info_dump_flags(info, &p);
 intel_device_info_dump_runtime(RUNTIME_INFO(dev_priv), &p);
 intel_driver_caps_print(&dev_priv->caps, &p);

 kernel_param_lock(THIS_MODULE);
 i915_params_dump(&i915_modparams, &p);
 kernel_param_unlock(THIS_MODULE);

 return 0;
}
