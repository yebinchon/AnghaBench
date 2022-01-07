
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
 int KERN_ERR ;
 int drm_dbg (int,char*,...) ;
 int drm_debug ;
 int drm_err (char*,...) ;
 int hdmi_infoframe_log (int ,int ,union hdmi_infoframe const*) ;

__attribute__((used)) static void
pipe_config_infoframe_mismatch(struct drm_i915_private *dev_priv,
          bool fastset, const char *name,
          const union hdmi_infoframe *a,
          const union hdmi_infoframe *b)
{
 if (fastset) {
  if ((drm_debug & DRM_UT_KMS) == 0)
   return;

  drm_dbg(DRM_UT_KMS, "fastset mismatch in %s infoframe", name);
  drm_dbg(DRM_UT_KMS, "expected:");
  hdmi_infoframe_log(KERN_DEBUG, dev_priv->drm.dev, a);
  drm_dbg(DRM_UT_KMS, "found");
  hdmi_infoframe_log(KERN_DEBUG, dev_priv->drm.dev, b);
 } else {
  drm_err("mismatch in %s infoframe", name);
  drm_err("expected:");
  hdmi_infoframe_log(KERN_ERR, dev_priv->drm.dev, a);
  drm_err("found");
  hdmi_infoframe_log(KERN_ERR, dev_priv->drm.dev, b);
 }
}
