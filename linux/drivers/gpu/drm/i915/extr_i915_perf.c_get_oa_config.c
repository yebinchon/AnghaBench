
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_oa_config {int ref_count; } ;
struct TYPE_2__ {int metrics_lock; int metrics_idr; struct i915_oa_config test_config; } ;
struct drm_i915_private {TYPE_1__ perf; } ;


 int EINVAL ;
 int atomic_inc (int *) ;
 struct i915_oa_config* idr_find (int *,int) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int get_oa_config(struct drm_i915_private *dev_priv,
    int metrics_set,
    struct i915_oa_config **out_config)
{
 int ret;

 if (metrics_set == 1) {
  *out_config = &dev_priv->perf.test_config;
  atomic_inc(&dev_priv->perf.test_config.ref_count);
  return 0;
 }

 ret = mutex_lock_interruptible(&dev_priv->perf.metrics_lock);
 if (ret)
  return ret;

 *out_config = idr_find(&dev_priv->perf.metrics_idr, metrics_set);
 if (!*out_config)
  ret = -EINVAL;
 else
  atomic_inc(&(*out_config)->ref_count);

 mutex_unlock(&dev_priv->perf.metrics_lock);

 return ret;
}
