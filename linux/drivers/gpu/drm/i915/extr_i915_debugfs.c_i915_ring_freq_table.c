
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int private; } ;
struct intel_rps {unsigned int min_freq; unsigned int max_freq; } ;
struct TYPE_2__ {struct intel_rps rps; } ;
struct drm_i915_private {int runtime_pm; TYPE_1__ gt_pm; } ;
typedef int intel_wakeref_t ;


 int ENODEV ;
 int GEN6_PCODE_READ_MIN_FREQ_TABLE ;
 unsigned int GEN9_FREQ_SCALER ;
 int HAS_LLC (struct drm_i915_private*) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_GEN9_BC (struct drm_i915_private*) ;
 int intel_gpu_freq (struct drm_i915_private*,int) ;
 int intel_runtime_pm_get (int *) ;
 int intel_runtime_pm_put (int *,int ) ;
 struct drm_i915_private* node_to_i915 (int ) ;
 int sandybridge_pcode_read (struct drm_i915_private*,int ,int*,int *) ;
 int seq_printf (struct seq_file*,char*,int ,int,int) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int i915_ring_freq_table(struct seq_file *m, void *unused)
{
 struct drm_i915_private *dev_priv = node_to_i915(m->private);
 struct intel_rps *rps = &dev_priv->gt_pm.rps;
 unsigned int max_gpu_freq, min_gpu_freq;
 intel_wakeref_t wakeref;
 int gpu_freq, ia_freq;

 if (!HAS_LLC(dev_priv))
  return -ENODEV;

 min_gpu_freq = rps->min_freq;
 max_gpu_freq = rps->max_freq;
 if (IS_GEN9_BC(dev_priv) || INTEL_GEN(dev_priv) >= 10) {

  min_gpu_freq /= GEN9_FREQ_SCALER;
  max_gpu_freq /= GEN9_FREQ_SCALER;
 }

 seq_puts(m, "GPU freq (MHz)\tEffective CPU freq (MHz)\tEffective Ring freq (MHz)\n");

 wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
 for (gpu_freq = min_gpu_freq; gpu_freq <= max_gpu_freq; gpu_freq++) {
  ia_freq = gpu_freq;
  sandybridge_pcode_read(dev_priv,
           GEN6_PCODE_READ_MIN_FREQ_TABLE,
           &ia_freq, ((void*)0));
  seq_printf(m, "%d\t\t%d\t\t\t\t%d\n",
      intel_gpu_freq(dev_priv, (gpu_freq *
           (IS_GEN9_BC(dev_priv) ||
            INTEL_GEN(dev_priv) >= 10 ?
            GEN9_FREQ_SCALER : 1))),
      ((ia_freq >> 0) & 0xff) * 100,
      ((ia_freq >> 8) & 0xff) * 100);
 }
 intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);

 return 0;
}
