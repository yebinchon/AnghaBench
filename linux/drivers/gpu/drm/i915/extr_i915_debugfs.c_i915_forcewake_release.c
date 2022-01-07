
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {struct drm_i915_private* i_private; } ;
struct file {scalar_t__ private_data; } ;
struct drm_i915_private {int runtime_pm; int uncore; } ;
typedef int intel_wakeref_t ;


 int INTEL_GEN (struct drm_i915_private*) ;
 int intel_runtime_pm_put (int *,int ) ;
 int intel_uncore_forcewake_user_put (int *) ;

__attribute__((used)) static int i915_forcewake_release(struct inode *inode, struct file *file)
{
 struct drm_i915_private *i915 = inode->i_private;

 if (INTEL_GEN(i915) < 6)
  return 0;

 intel_uncore_forcewake_user_put(&i915->uncore);
 intel_runtime_pm_put(&i915->runtime_pm,
        (intel_wakeref_t)(uintptr_t)file->private_data);

 return 0;
}
