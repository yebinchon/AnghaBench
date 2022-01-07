
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef int i915_reg_t ;
typedef enum port { ____Placeholder_port } port ;


 int DDI_BUF_CTL (int) ;
 int DDI_BUF_IS_IDLE ;
 int DRM_ERROR (char*,int ) ;
 int I915_READ (int ) ;
 int port_name (int) ;
 int udelay (int) ;

__attribute__((used)) static void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
        enum port port)
{
 i915_reg_t reg = DDI_BUF_CTL(port);
 int i;

 for (i = 0; i < 16; i++) {
  udelay(1);
  if (I915_READ(reg) & DDI_BUF_IS_IDLE)
   return;
 }
 DRM_ERROR("Timeout waiting for DDI BUF %c idle bit\n", port_name(port));
}
