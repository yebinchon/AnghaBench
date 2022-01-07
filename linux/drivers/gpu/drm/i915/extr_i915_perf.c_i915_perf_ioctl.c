
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_perf_stream {struct drm_i915_private* dev_priv; } ;
struct file {struct i915_perf_stream* private_data; } ;
struct TYPE_2__ {int lock; } ;
struct drm_i915_private {TYPE_1__ perf; } ;


 long i915_perf_ioctl_locked (struct i915_perf_stream*,unsigned int,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static long i915_perf_ioctl(struct file *file,
       unsigned int cmd,
       unsigned long arg)
{
 struct i915_perf_stream *stream = file->private_data;
 struct drm_i915_private *dev_priv = stream->dev_priv;
 long ret;

 mutex_lock(&dev_priv->perf.lock);
 ret = i915_perf_ioctl_locked(stream, cmd, arg);
 mutex_unlock(&dev_priv->perf.lock);

 return ret;
}
