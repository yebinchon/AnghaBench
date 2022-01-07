
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;
struct seq_file {struct drm_i915_private* private; } ;
struct drm_device {int dummy; } ;
struct drm_i915_private {struct drm_device drm; } ;


 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_G4X (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int drm_modeset_lock_all (struct drm_device*) ;
 int drm_modeset_unlock_all (struct drm_device*) ;
 int ilk_wm_max_level (struct drm_i915_private*) ;
 int seq_printf (struct seq_file*,char*,int,unsigned int const,unsigned int,unsigned int) ;

__attribute__((used)) static void wm_latency_show(struct seq_file *m, const u16 wm[8])
{
 struct drm_i915_private *dev_priv = m->private;
 struct drm_device *dev = &dev_priv->drm;
 int level;
 int num_levels;

 if (IS_CHERRYVIEW(dev_priv))
  num_levels = 3;
 else if (IS_VALLEYVIEW(dev_priv))
  num_levels = 1;
 else if (IS_G4X(dev_priv))
  num_levels = 3;
 else
  num_levels = ilk_wm_max_level(dev_priv) + 1;

 drm_modeset_lock_all(dev);

 for (level = 0; level < num_levels; level++) {
  unsigned int latency = wm[level];





  if (INTEL_GEN(dev_priv) >= 9 ||
      IS_VALLEYVIEW(dev_priv) ||
      IS_CHERRYVIEW(dev_priv) ||
      IS_G4X(dev_priv))
   latency *= 10;
  else if (level > 0)
   latency *= 5;

  seq_printf(m, "WM%d %u (%u.%u usec)\n",
      level, wm[level], latency / 10, latency % 10);
 }

 drm_modeset_unlock_all(dev);
}
