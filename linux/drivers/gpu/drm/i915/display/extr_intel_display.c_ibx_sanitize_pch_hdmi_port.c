
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef int i915_reg_t ;
typedef enum port { ____Placeholder_port } port ;


 int DRM_DEBUG_KMS (char*,int ) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int PIPE_A ;
 int SDVO_ENABLE ;
 int SDVO_PIPE_SEL (int ) ;
 int SDVO_PIPE_SEL_MASK ;
 int port_name (int) ;

__attribute__((used)) static void ibx_sanitize_pch_hdmi_port(struct drm_i915_private *dev_priv,
           enum port port, i915_reg_t hdmi_reg)
{
 u32 val = I915_READ(hdmi_reg);

 if (val & SDVO_ENABLE ||
     (val & SDVO_PIPE_SEL_MASK) == SDVO_PIPE_SEL(PIPE_A))
  return;

 DRM_DEBUG_KMS("Sanitizing transcoder select for HDMI %c\n",
        port_name(port));

 val &= ~SDVO_PIPE_SEL_MASK;
 val |= SDVO_PIPE_SEL(PIPE_A);

 I915_WRITE(hdmi_reg, val);
}
