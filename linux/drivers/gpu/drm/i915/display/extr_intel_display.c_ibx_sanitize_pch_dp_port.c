
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef int i915_reg_t ;
typedef enum port { ____Placeholder_port } port ;


 int DP_PIPE_SEL (int ) ;
 int DP_PIPE_SEL_MASK ;
 int DP_PORT_EN ;
 int DRM_DEBUG_KMS (char*,int ) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int PIPE_A ;
 int port_name (int) ;

__attribute__((used)) static void ibx_sanitize_pch_dp_port(struct drm_i915_private *dev_priv,
         enum port port, i915_reg_t dp_reg)
{
 u32 val = I915_READ(dp_reg);

 if (val & DP_PORT_EN ||
     (val & DP_PIPE_SEL_MASK) == DP_PIPE_SEL(PIPE_A))
  return;

 DRM_DEBUG_KMS("Sanitizing transcoder select for DP %c\n",
        port_name(port));

 val &= ~DP_PIPE_SEL_MASK;
 val |= DP_PIPE_SEL(PIPE_A);

 I915_WRITE(dp_reg, val);
}
