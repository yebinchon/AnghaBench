
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_rps {int min_freq; int rp1_freq; int rp0_freq; } ;
struct TYPE_2__ {struct intel_rps rps; } ;
struct drm_i915_private {TYPE_1__ gt_pm; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int BUG () ;
 int PAGE_SIZE ;
 struct device_attribute dev_attr_gt_RP0_freq_mhz ;
 struct device_attribute dev_attr_gt_RP1_freq_mhz ;
 struct device_attribute dev_attr_gt_RPn_freq_mhz ;
 int intel_gpu_freq (struct drm_i915_private*,int ) ;
 struct drm_i915_private* kdev_minor_to_i915 (struct device*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t gt_rp_mhz_show(struct device *kdev, struct device_attribute *attr, char *buf)
{
 struct drm_i915_private *dev_priv = kdev_minor_to_i915(kdev);
 struct intel_rps *rps = &dev_priv->gt_pm.rps;
 u32 val;

 if (attr == &dev_attr_gt_RP0_freq_mhz)
  val = intel_gpu_freq(dev_priv, rps->rp0_freq);
 else if (attr == &dev_attr_gt_RP1_freq_mhz)
  val = intel_gpu_freq(dev_priv, rps->rp1_freq);
 else if (attr == &dev_attr_gt_RPn_freq_mhz)
  val = intel_gpu_freq(dev_priv, rps->min_freq);
 else
  BUG();

 return snprintf(buf, PAGE_SIZE, "%d\n", val);
}
