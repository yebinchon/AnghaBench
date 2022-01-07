
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct i915_perf_stream {struct drm_i915_private* dev_priv; } ;
struct file {struct i915_perf_stream* private_data; } ;
struct TYPE_2__ {int lock; } ;
struct drm_i915_private {int drm; TYPE_1__ perf; } ;


 int drm_dev_put (int *) ;
 int i915_perf_destroy_locked (struct i915_perf_stream*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int i915_perf_release(struct inode *inode, struct file *file)
{
 struct i915_perf_stream *stream = file->private_data;
 struct drm_i915_private *dev_priv = stream->dev_priv;

 mutex_lock(&dev_priv->perf.lock);
 i915_perf_destroy_locked(stream);
 mutex_unlock(&dev_priv->perf.lock);


 drm_dev_put(&dev_priv->drm);

 return 0;
}
