
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_file_private {int dummy; } ;
struct drm_file {struct drm_i915_file_private* driver_priv; } ;
struct drm_device {int struct_mutex; } ;


 int i915_gem_context_close (struct drm_file*) ;
 int i915_gem_flush_free_objects (int ) ;
 int i915_gem_release (struct drm_device*,struct drm_file*) ;
 int kfree (struct drm_i915_file_private*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int to_i915 (struct drm_device*) ;

__attribute__((used)) static void i915_driver_postclose(struct drm_device *dev, struct drm_file *file)
{
 struct drm_i915_file_private *file_priv = file->driver_priv;

 mutex_lock(&dev->struct_mutex);
 i915_gem_context_close(file);
 i915_gem_release(dev, file);
 mutex_unlock(&dev->struct_mutex);

 kfree(file_priv);


 i915_gem_flush_free_objects(to_i915(dev));
}
