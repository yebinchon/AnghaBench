
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct intel_rps {scalar_t__ min_freq; scalar_t__ max_freq; scalar_t__ boost_freq; int work; int lock; int num_waiters; } ;
struct TYPE_2__ {struct intel_rps rps; } ;
struct drm_i915_private {TYPE_1__ gt_pm; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int atomic_read (int *) ;
 scalar_t__ intel_freq_opcode (struct drm_i915_private*,scalar_t__) ;
 struct drm_i915_private* kdev_minor_to_i915 (struct device*) ;
 size_t kstrtou32 (char const*,int ,scalar_t__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_work (int *) ;

__attribute__((used)) static ssize_t gt_boost_freq_mhz_store(struct device *kdev,
           struct device_attribute *attr,
           const char *buf, size_t count)
{
 struct drm_i915_private *dev_priv = kdev_minor_to_i915(kdev);
 struct intel_rps *rps = &dev_priv->gt_pm.rps;
 bool boost = 0;
 ssize_t ret;
 u32 val;

 ret = kstrtou32(buf, 0, &val);
 if (ret)
  return ret;


 val = intel_freq_opcode(dev_priv, val);
 if (val < rps->min_freq || val > rps->max_freq)
  return -EINVAL;

 mutex_lock(&rps->lock);
 if (val != rps->boost_freq) {
  rps->boost_freq = val;
  boost = atomic_read(&rps->num_waiters);
 }
 mutex_unlock(&rps->lock);
 if (boost)
  schedule_work(&rps->work);

 return count;
}
