
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int private; } ;
struct drm_i915_private {int runtime_pm; } ;
typedef int intel_wakeref_t ;
struct TYPE_2__ {int enable_ips; } ;


 int ENODEV ;
 int HAS_IPS (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int IPS_CTL ;
 int IPS_ENABLE ;
 TYPE_1__ i915_modparams ;
 int intel_runtime_pm_get (int *) ;
 int intel_runtime_pm_put (int *,int ) ;
 struct drm_i915_private* node_to_i915 (int ) ;
 int seq_printf (struct seq_file*,char*,int ) ;
 int seq_puts (struct seq_file*,char*) ;
 int yesno (int ) ;

__attribute__((used)) static int i915_ips_status(struct seq_file *m, void *unused)
{
 struct drm_i915_private *dev_priv = node_to_i915(m->private);
 intel_wakeref_t wakeref;

 if (!HAS_IPS(dev_priv))
  return -ENODEV;

 wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);

 seq_printf(m, "Enabled by kernel parameter: %s\n",
     yesno(i915_modparams.enable_ips));

 if (INTEL_GEN(dev_priv) >= 8) {
  seq_puts(m, "Currently: unknown\n");
 } else {
  if (I915_READ(IPS_CTL) & IPS_ENABLE)
   seq_puts(m, "Currently: enabled\n");
  else
   seq_puts(m, "Currently: disabled\n");
 }

 intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);

 return 0;
}
