
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct intel_dsi {int escape_clk_div; } ;
struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;


 int ESCAPE_CLOCK_DIVIDER_MASK ;
 int ESCAPE_CLOCK_DIVIDER_SHIFT ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int MIPI_CTRL (int) ;
 struct intel_dsi* enc_to_intel_dsi (TYPE_1__*) ;
 struct drm_i915_private* to_i915 (int ) ;

void vlv_dsi_reset_clocks(struct intel_encoder *encoder, enum port port)
{
 u32 temp;
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 struct intel_dsi *intel_dsi = enc_to_intel_dsi(&encoder->base);

 temp = I915_READ(MIPI_CTRL(port));
 temp &= ~ESCAPE_CLOCK_DIVIDER_MASK;
 I915_WRITE(MIPI_CTRL(port), temp |
   intel_dsi->escape_clk_div <<
   ESCAPE_CLOCK_DIVIDER_SHIFT);
}
