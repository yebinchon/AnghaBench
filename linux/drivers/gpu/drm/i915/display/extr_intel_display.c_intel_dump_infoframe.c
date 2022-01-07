
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union hdmi_infoframe {int dummy; } hdmi_infoframe ;
struct TYPE_2__ {int dev; } ;
struct drm_i915_private {TYPE_1__ drm; } ;


 int DRM_UT_KMS ;
 int KERN_DEBUG ;
 int drm_debug ;
 int hdmi_infoframe_log (int ,int ,union hdmi_infoframe const*) ;

__attribute__((used)) static void
intel_dump_infoframe(struct drm_i915_private *dev_priv,
       const union hdmi_infoframe *frame)
{
 if ((drm_debug & DRM_UT_KMS) == 0)
  return;

 hdmi_infoframe_log(KERN_DEBUG, dev_priv->drm.dev, frame);
}
