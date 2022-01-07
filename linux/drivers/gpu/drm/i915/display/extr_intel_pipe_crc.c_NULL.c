
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_pipe_crc {int source; scalar_t__ skipped; } ;
struct drm_i915_private {struct intel_pipe_crc* pipe_crc; } ;
struct drm_crtc {size_t index; int dev; } ;
typedef int intel_wakeref_t ;
typedef enum intel_pipe_crc_source { ____Placeholder_intel_pipe_crc_source } intel_pipe_crc_source ;
typedef enum intel_display_power_domain { ____Placeholder_intel_display_power_domain } intel_display_power_domain ;


 int DRM_DEBUG_DRIVER (char*,char const*) ;
 int DRM_DEBUG_KMS (char*) ;
 int EINVAL ;
 int EIO ;
 int I915_WRITE (int ,int ) ;
 int INTEL_PIPE_CRC_SOURCE_NONE ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int PIPE_CRC_CTL (size_t) ;
 int POSTING_READ (int ) ;
 int POWER_DOMAIN_PIPE (size_t) ;
 scalar_t__ display_crc_ctl_parse_source (char const*,int*) ;
 int get_new_crc_ctl_reg (struct drm_i915_private*,size_t,int*,int *) ;
 int intel_crtc_crc_setup_workarounds (int ,int) ;
 int intel_display_power_get_if_enabled (struct drm_i915_private*,int) ;
 int intel_display_power_put (struct drm_i915_private*,int,int ) ;
 struct drm_i915_private* to_i915 (int ) ;
 int to_intel_crtc (struct drm_crtc*) ;
 int vlv_undo_pipe_scramble_reset (struct drm_i915_private*,size_t) ;

int intel_crtc_set_crc_source(struct drm_crtc *crtc, const char *source_name)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->dev);
 struct intel_pipe_crc *pipe_crc = &dev_priv->pipe_crc[crtc->index];
 enum intel_display_power_domain power_domain;
 enum intel_pipe_crc_source source;
 intel_wakeref_t wakeref;
 u32 val = 0;
 int ret = 0;
 bool enable;

 if (display_crc_ctl_parse_source(source_name, &source) < 0) {
  DRM_DEBUG_DRIVER("unknown source %s\n", source_name);
  return -EINVAL;
 }

 power_domain = POWER_DOMAIN_PIPE(crtc->index);
 wakeref = intel_display_power_get_if_enabled(dev_priv, power_domain);
 if (!wakeref) {
  DRM_DEBUG_KMS("Trying to capture CRC while pipe is off\n");
  return -EIO;
 }

 enable = source != INTEL_PIPE_CRC_SOURCE_NONE;
 if (enable)
  intel_crtc_crc_setup_workarounds(to_intel_crtc(crtc), 1);

 ret = get_new_crc_ctl_reg(dev_priv, crtc->index, &source, &val);
 if (ret != 0)
  goto out;

 pipe_crc->source = source;
 I915_WRITE(PIPE_CRC_CTL(crtc->index), val);
 POSTING_READ(PIPE_CRC_CTL(crtc->index));

 if (!source) {
  if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
   vlv_undo_pipe_scramble_reset(dev_priv, crtc->index);
 }

 pipe_crc->skipped = 0;

out:
 if (!enable)
  intel_crtc_crc_setup_workarounds(to_intel_crtc(crtc), 0);

 intel_display_power_put(dev_priv, power_domain, wakeref);

 return ret;
}
