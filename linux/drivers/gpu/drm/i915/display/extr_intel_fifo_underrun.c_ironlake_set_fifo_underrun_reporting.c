
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DE_PIPEA_FIFO_UNDERRUN ;
 int DE_PIPEB_FIFO_UNDERRUN ;
 int PIPE_A ;
 int ilk_disable_display_irq (struct drm_i915_private*,int ) ;
 int ilk_enable_display_irq (struct drm_i915_private*,int ) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

__attribute__((used)) static void ironlake_set_fifo_underrun_reporting(struct drm_device *dev,
       enum pipe pipe, bool enable)
{
 struct drm_i915_private *dev_priv = to_i915(dev);
 u32 bit = (pipe == PIPE_A) ?
  DE_PIPEA_FIFO_UNDERRUN : DE_PIPEB_FIFO_UNDERRUN;

 if (enable)
  ilk_enable_display_irq(dev_priv, bit);
 else
  ilk_disable_display_irq(dev_priv, bit);
}
