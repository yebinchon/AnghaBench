
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {struct drm_i915_private* i_private; } ;
struct file {void* private_data; } ;
struct drm_i915_private {int uncore; int runtime_pm; } ;


 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ intel_runtime_pm_get (int *) ;
 int intel_uncore_forcewake_user_get (int *) ;

__attribute__((used)) static int i915_forcewake_open(struct inode *inode, struct file *file)
{
 struct drm_i915_private *i915 = inode->i_private;

 if (INTEL_GEN(i915) < 6)
  return 0;

 file->private_data =
  (void *)(uintptr_t)intel_runtime_pm_get(&i915->runtime_pm);
 intel_uncore_forcewake_user_get(&i915->uncore);

 return 0;
}
