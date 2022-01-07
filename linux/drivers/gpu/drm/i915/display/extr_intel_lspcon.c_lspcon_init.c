
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct intel_lspcon {int active; int mode; } ;
struct intel_dp {TYPE_3__* attached_connector; } ;
struct TYPE_4__ {struct drm_device* dev; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct intel_digital_port {TYPE_2__ base; struct intel_lspcon lspcon; struct intel_dp dp; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {int ycbcr_420_allowed; } ;
struct TYPE_6__ {struct drm_connector base; } ;


 int DRM_DEBUG_KMS (char*) ;
 int DRM_ERROR (char*) ;
 int DRM_LSPCON_MODE_INVALID ;
 int HAS_LSPCON (struct drm_i915_private*) ;
 int intel_dp_read_dpcd (struct intel_dp*) ;
 int lspcon_detect_vendor (struct intel_lspcon*) ;
 int lspcon_probe (struct intel_lspcon*) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

bool lspcon_init(struct intel_digital_port *intel_dig_port)
{
 struct intel_dp *dp = &intel_dig_port->dp;
 struct intel_lspcon *lspcon = &intel_dig_port->lspcon;
 struct drm_device *dev = intel_dig_port->base.base.dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 struct drm_connector *connector = &dp->attached_connector->base;

 if (!HAS_LSPCON(dev_priv)) {
  DRM_ERROR("LSPCON is not supported on this platform\n");
  return 0;
 }

 lspcon->active = 0;
 lspcon->mode = DRM_LSPCON_MODE_INVALID;

 if (!lspcon_probe(lspcon)) {
  DRM_ERROR("Failed to probe lspcon\n");
  return 0;
 }

 if (!intel_dp_read_dpcd(dp)) {
  DRM_ERROR("LSPCON DPCD read failed\n");
  return 0;
 }

 if (!lspcon_detect_vendor(lspcon)) {
  DRM_ERROR("LSPCON vendor detection failed\n");
  return 0;
 }

 connector->ycbcr_420_allowed = 1;
 lspcon->active = 1;
 DRM_DEBUG_KMS("Success: LSPCON init\n");
 return 1;
}
