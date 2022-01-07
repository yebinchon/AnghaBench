
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {struct drm_i915_private* i_private; } ;
struct file {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 int ENODEV ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int IS_G4X (struct drm_i915_private*) ;
 int pri_wm_latency_show ;
 int single_open (struct file*,int ,struct drm_i915_private*) ;

__attribute__((used)) static int pri_wm_latency_open(struct inode *inode, struct file *file)
{
 struct drm_i915_private *dev_priv = inode->i_private;

 if (INTEL_GEN(dev_priv) < 5 && !IS_G4X(dev_priv))
  return -ENODEV;

 return single_open(file, pri_wm_latency_show, dev_priv);
}
