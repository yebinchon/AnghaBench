
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_hdmi {struct intel_connector* attached_connector; } ;
struct intel_digital_port {int base; struct intel_hdmi hdmi; } ;
struct TYPE_2__ {int dev; } ;
struct intel_connector {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;


 int DRM_ERROR (char*,char*,int) ;
 scalar_t__ IS_KABYLAKE (struct drm_i915_private*) ;
 int intel_ddi_toggle_hdcp_signalling (int *,int) ;
 int kbl_repositioning_enc_en_signal (struct intel_connector*) ;
 struct drm_i915_private* to_i915 (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static
int intel_hdmi_hdcp_toggle_signalling(struct intel_digital_port *intel_dig_port,
          bool enable)
{
 struct intel_hdmi *hdmi = &intel_dig_port->hdmi;
 struct intel_connector *connector = hdmi->attached_connector;
 struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 int ret;

 if (!enable)
  usleep_range(6, 60);

 ret = intel_ddi_toggle_hdcp_signalling(&intel_dig_port->base, enable);
 if (ret) {
  DRM_ERROR("%s HDCP signalling failed (%d)\n",
     enable ? "Enable" : "Disable", ret);
  return ret;
 }





 if (IS_KABYLAKE(dev_priv) && enable)
  return kbl_repositioning_enc_en_signal(connector);

 return 0;
}
