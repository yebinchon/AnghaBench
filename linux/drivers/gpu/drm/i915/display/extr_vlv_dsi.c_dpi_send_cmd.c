
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


 int DPI_LP_MODE ;
 int DRM_DEBUG_KMS (char*,int ) ;
 int DRM_ERROR (char*,int ) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int MIPI_DPI_CONTROL (int) ;
 int MIPI_INTR_STAT (int) ;
 int SPL_PKT_SENT_INTERRUPT ;
 scalar_t__ intel_de_wait_for_set (struct drm_i915_private*,int ,int ,int) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

__attribute__((used)) static int dpi_send_cmd(struct intel_dsi *intel_dsi, u32 cmd, bool hs,
   enum port port)
{
 struct drm_encoder *encoder = &intel_dsi->base.base;
 struct drm_device *dev = encoder->dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 u32 mask;


 if (hs)
  cmd &= ~DPI_LP_MODE;
 else
  cmd |= DPI_LP_MODE;


 I915_WRITE(MIPI_INTR_STAT(port), SPL_PKT_SENT_INTERRUPT);


 if (cmd == I915_READ(MIPI_DPI_CONTROL(port)))
  DRM_DEBUG_KMS("Same special packet %02x twice in a row.\n", cmd);

 I915_WRITE(MIPI_DPI_CONTROL(port), cmd);

 mask = SPL_PKT_SENT_INTERRUPT;
 if (intel_de_wait_for_set(dev_priv, MIPI_INTR_STAT(port), mask, 100))
  DRM_ERROR("Video mode command 0x%08x send failed.\n", cmd);

 return 0;
}
