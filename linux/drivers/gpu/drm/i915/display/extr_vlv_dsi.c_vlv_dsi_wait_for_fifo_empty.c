
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_encoder {struct drm_device* dev; } ;
struct TYPE_2__ {struct drm_encoder base; } ;
struct intel_dsi {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;


 int DRM_ERROR (char*) ;
 int HS_CTRL_FIFO_EMPTY ;
 int HS_DATA_FIFO_EMPTY ;
 int LP_CTRL_FIFO_EMPTY ;
 int LP_DATA_FIFO_EMPTY ;
 int MIPI_GEN_FIFO_STAT (int) ;
 scalar_t__ intel_de_wait_for_set (struct drm_i915_private*,int ,int,int) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

void vlv_dsi_wait_for_fifo_empty(struct intel_dsi *intel_dsi, enum port port)
{
 struct drm_encoder *encoder = &intel_dsi->base.base;
 struct drm_device *dev = encoder->dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 u32 mask;

 mask = LP_CTRL_FIFO_EMPTY | HS_CTRL_FIFO_EMPTY |
  LP_DATA_FIFO_EMPTY | HS_DATA_FIFO_EMPTY;

 if (intel_de_wait_for_set(dev_priv, MIPI_GEN_FIFO_STAT(port),
      mask, 100))
  DRM_ERROR("DPI FIFOs are not empty\n");
}
