
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int ipc_enabled; } ;


 int HAS_IPC (struct drm_i915_private*) ;
 int intel_can_enable_ipc (struct drm_i915_private*) ;
 int intel_enable_ipc (struct drm_i915_private*) ;

void intel_init_ipc(struct drm_i915_private *dev_priv)
{
 if (!HAS_IPC(dev_priv))
  return;

 dev_priv->ipc_enabled = intel_can_enable_ipc(dev_priv);

 intel_enable_ipc(dev_priv);
}
