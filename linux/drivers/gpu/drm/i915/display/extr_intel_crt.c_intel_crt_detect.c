
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct intel_load_detect_pipe {int dummy; } ;
struct intel_encoder {int power_domain; } ;
struct intel_crt {struct intel_encoder base; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_5__ {int id; } ;
struct drm_connector {int status; TYPE_2__* state; int name; TYPE_1__ base; int dev; } ;
typedef int intel_wakeref_t ;
struct TYPE_8__ {scalar_t__ load_detect_test; } ;
struct TYPE_7__ {int pipe; } ;
struct TYPE_6__ {int crtc; } ;


 int DRM_DEBUG_KMS (char*,...) ;
 scalar_t__ I915_HAS_HOTPLUG (struct drm_i915_private*) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int connector_status_connected ;
 int connector_status_disconnected ;
 int connector_status_unknown ;
 scalar_t__ dmi_check_system (int ) ;
 TYPE_4__ i915_modparams ;
 struct intel_crt* intel_attached_crt (struct drm_connector*) ;
 scalar_t__ intel_crt_detect_ddc (struct drm_connector*) ;
 scalar_t__ intel_crt_detect_hotplug (struct drm_connector*) ;
 int intel_crt_load_detect (struct intel_crt*,int ) ;
 int intel_display_power_flush_work (struct drm_i915_private*) ;
 int intel_display_power_get (struct drm_i915_private*,int ) ;
 int intel_display_power_put (struct drm_i915_private*,int ,int ) ;
 int intel_get_load_detect_pipe (struct drm_connector*,int *,struct intel_load_detect_pipe*,struct drm_modeset_acquire_ctx*) ;
 int intel_release_load_detect_pipe (struct drm_connector*,struct intel_load_detect_pipe*,struct drm_modeset_acquire_ctx*) ;
 int intel_spurious_crt_detect ;
 struct drm_i915_private* to_i915 (int ) ;
 TYPE_3__* to_intel_crtc (int ) ;

__attribute__((used)) static int
intel_crt_detect(struct drm_connector *connector,
   struct drm_modeset_acquire_ctx *ctx,
   bool force)
{
 struct drm_i915_private *dev_priv = to_i915(connector->dev);
 struct intel_crt *crt = intel_attached_crt(connector);
 struct intel_encoder *intel_encoder = &crt->base;
 intel_wakeref_t wakeref;
 int status, ret;
 struct intel_load_detect_pipe tmp;

 DRM_DEBUG_KMS("[CONNECTOR:%d:%s] force=%d\n",
        connector->base.id, connector->name,
        force);

 if (i915_modparams.load_detect_test) {
  wakeref = intel_display_power_get(dev_priv,
        intel_encoder->power_domain);
  goto load_detect;
 }


 if (dmi_check_system(intel_spurious_crt_detect))
  return connector_status_disconnected;

 wakeref = intel_display_power_get(dev_priv,
       intel_encoder->power_domain);

 if (I915_HAS_HOTPLUG(dev_priv)) {




  if (intel_crt_detect_hotplug(connector)) {
   DRM_DEBUG_KMS("CRT detected via hotplug\n");
   status = connector_status_connected;
   goto out;
  } else
   DRM_DEBUG_KMS("CRT not detected via hotplug\n");
 }

 if (intel_crt_detect_ddc(connector)) {
  status = connector_status_connected;
  goto out;
 }





 if (I915_HAS_HOTPLUG(dev_priv)) {
  status = connector_status_disconnected;
  goto out;
 }

load_detect:
 if (!force) {
  status = connector->status;
  goto out;
 }


 ret = intel_get_load_detect_pipe(connector, ((void*)0), &tmp, ctx);
 if (ret > 0) {
  if (intel_crt_detect_ddc(connector))
   status = connector_status_connected;
  else if (INTEL_GEN(dev_priv) < 4)
   status = intel_crt_load_detect(crt,
    to_intel_crtc(connector->state->crtc)->pipe);
  else if (i915_modparams.load_detect_test)
   status = connector_status_disconnected;
  else
   status = connector_status_unknown;
  intel_release_load_detect_pipe(connector, &tmp, ctx);
 } else if (ret == 0) {
  status = connector_status_unknown;
 } else {
  status = ret;
 }

out:
 intel_display_power_put(dev_priv, intel_encoder->power_domain, wakeref);





 intel_display_power_flush_work(dev_priv);

 return status;
}
