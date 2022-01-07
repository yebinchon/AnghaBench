
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;


 int BXT_MIPI_8X_BY3_DIVIDER_MASK (int) ;
 int BXT_MIPI_CLOCK_CTL ;
 int BXT_MIPI_RX_ESCLK_LOWER_FIXDIV_MASK (int) ;
 int BXT_MIPI_RX_ESCLK_UPPER_FIXDIV_MASK (int) ;
 int BXT_MIPI_TX_ESCLK_FIXDIV_MASK (int) ;
 int CLOCKSTOP ;
 int GLK_TX_ESC_CLK_DIV1_MASK ;
 int GLK_TX_ESC_CLK_DIV2_MASK ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 scalar_t__ IS_BROXTON (struct drm_i915_private*) ;
 int MIPIO_TXESC_CLK_DIV1 ;
 int MIPIO_TXESC_CLK_DIV2 ;
 int MIPI_EOT_DISABLE (int) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

void bxt_dsi_reset_clocks(struct intel_encoder *encoder, enum port port)
{
 u32 tmp;
 struct drm_device *dev = encoder->base.dev;
 struct drm_i915_private *dev_priv = to_i915(dev);


 if (IS_BROXTON(dev_priv)) {
  tmp = I915_READ(BXT_MIPI_CLOCK_CTL);
  tmp &= ~(BXT_MIPI_TX_ESCLK_FIXDIV_MASK(port));
  tmp &= ~(BXT_MIPI_RX_ESCLK_UPPER_FIXDIV_MASK(port));
  tmp &= ~(BXT_MIPI_8X_BY3_DIVIDER_MASK(port));
  tmp &= ~(BXT_MIPI_RX_ESCLK_LOWER_FIXDIV_MASK(port));
  I915_WRITE(BXT_MIPI_CLOCK_CTL, tmp);
 } else {
  tmp = I915_READ(MIPIO_TXESC_CLK_DIV1);
  tmp &= ~GLK_TX_ESC_CLK_DIV1_MASK;
  I915_WRITE(MIPIO_TXESC_CLK_DIV1, tmp);

  tmp = I915_READ(MIPIO_TXESC_CLK_DIV2);
  tmp &= ~GLK_TX_ESC_CLK_DIV2_MASK;
  I915_WRITE(MIPIO_TXESC_CLK_DIV2, tmp);
 }
 I915_WRITE(MIPI_EOT_DISABLE(port), CLOCKSTOP);
}
