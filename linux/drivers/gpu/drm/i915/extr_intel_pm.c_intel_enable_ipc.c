
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {scalar_t__ ipc_enabled; } ;


 int DISP_ARB_CTL2 ;
 int DISP_IPC_ENABLE ;
 int HAS_IPC (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;

void intel_enable_ipc(struct drm_i915_private *dev_priv)
{
 u32 val;

 if (!HAS_IPC(dev_priv))
  return;

 val = I915_READ(DISP_ARB_CTL2);

 if (dev_priv->ipc_enabled)
  val |= DISP_IPC_ENABLE;
 else
  val &= ~DISP_IPC_ENABLE;

 I915_WRITE(DISP_ARB_CTL2, val);
}
