
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_perf_stream {struct drm_i915_private* dev_priv; } ;
struct file {struct i915_perf_stream* private_data; } ;
struct TYPE_2__ {int lock; } ;
struct drm_i915_private {TYPE_1__ perf; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int i915_perf_poll_locked (struct drm_i915_private*,struct i915_perf_stream*,struct file*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static __poll_t i915_perf_poll(struct file *file, poll_table *wait)
{
 struct i915_perf_stream *stream = file->private_data;
 struct drm_i915_private *dev_priv = stream->dev_priv;
 __poll_t ret;

 mutex_lock(&dev_priv->perf.lock);
 ret = i915_perf_poll_locked(dev_priv, stream, file, wait);
 mutex_unlock(&dev_priv->perf.lock);

 return ret;
}
