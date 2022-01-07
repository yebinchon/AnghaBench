
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int runtime_pm; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int intel_wakeref_t ;


 int GEN6_RPSTAT1 ;
 int I915_READ (int ) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int PAGE_SIZE ;
 int PUNIT_REG_GPU_FREQ_STS ;
 int intel_get_cagf (struct drm_i915_private*,int ) ;
 int intel_gpu_freq (struct drm_i915_private*,int) ;
 int intel_runtime_pm_get (int *) ;
 int intel_runtime_pm_put (int *,int ) ;
 struct drm_i915_private* kdev_minor_to_i915 (struct device*) ;
 int snprintf (char*,int ,char*,int) ;
 int vlv_punit_get (struct drm_i915_private*) ;
 int vlv_punit_put (struct drm_i915_private*) ;
 int vlv_punit_read (struct drm_i915_private*,int ) ;

__attribute__((used)) static ssize_t gt_act_freq_mhz_show(struct device *kdev,
        struct device_attribute *attr, char *buf)
{
 struct drm_i915_private *dev_priv = kdev_minor_to_i915(kdev);
 intel_wakeref_t wakeref;
 u32 freq;

 wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);

 if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
  vlv_punit_get(dev_priv);
  freq = vlv_punit_read(dev_priv, PUNIT_REG_GPU_FREQ_STS);
  vlv_punit_put(dev_priv);

  freq = (freq >> 8) & 0xff;
 } else {
  freq = intel_get_cagf(dev_priv, I915_READ(GEN6_RPSTAT1));
 }

 intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);

 return snprintf(buf, PAGE_SIZE, "%d\n", intel_gpu_freq(dev_priv, freq));
}
