
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_hdmi {int cec_notifier; struct intel_connector* attached_connector; int ddc_bus; } ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct intel_encoder {int port; int hpd_pin; TYPE_1__ base; } ;
struct intel_digital_port {int max_lanes; struct intel_encoder base; struct intel_hdmi hdmi; } ;
struct drm_connector {int interlace_allowed; int stereo_allowed; int ycbcr_420_allowed; scalar_t__ doublescan_allowed; } ;
struct intel_connector {int get_hw_state; struct drm_connector base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dev; } ;
typedef enum port { ____Placeholder_port } port ;


 int DRM_DEBUG_KMS (char*,...) ;
 int DRM_MODE_CONNECTOR_HDMIA ;
 scalar_t__ HAS_DDI (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_G45 (struct drm_i915_private*) ;
 scalar_t__ IS_GEMINILAKE (struct drm_i915_private*) ;
 int PEG_BAND_GAP_DATA ;
 int PORT_A ;
 scalar_t__ WARN (int,char*,int,int ) ;
 scalar_t__ WARN_ON (int) ;
 int cec_notifier_get_conn (int ,int ) ;
 int drm_connector_helper_add (struct drm_connector*,int *) ;
 int drm_connector_init (struct drm_device*,struct drm_connector*,int *,int ) ;
 int intel_connector_attach_encoder (struct intel_connector*,struct intel_encoder*) ;
 int intel_connector_get_hw_state ;
 int intel_ddi_connector_get_hw_state ;
 int intel_hdcp_init (struct intel_connector*,int *) ;
 int intel_hdmi_add_properties (struct intel_hdmi*,struct drm_connector*) ;
 int intel_hdmi_connector_funcs ;
 int intel_hdmi_connector_helper_funcs ;
 int intel_hdmi_ddc_pin (struct drm_i915_private*,int) ;
 int intel_hdmi_hdcp_shim ;
 int intel_hpd_pin_default (struct drm_i915_private*,int) ;
 scalar_t__ is_hdcp_supported (struct drm_i915_private*,int) ;
 int port_identifier (int) ;
 int port_name (int) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

void intel_hdmi_init_connector(struct intel_digital_port *intel_dig_port,
          struct intel_connector *intel_connector)
{
 struct drm_connector *connector = &intel_connector->base;
 struct intel_hdmi *intel_hdmi = &intel_dig_port->hdmi;
 struct intel_encoder *intel_encoder = &intel_dig_port->base;
 struct drm_device *dev = intel_encoder->base.dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 enum port port = intel_encoder->port;

 DRM_DEBUG_KMS("Adding HDMI connector on port %c\n",
        port_name(port));

 if (WARN(intel_dig_port->max_lanes < 4,
   "Not enough lanes (%d) for HDMI on port %c\n",
   intel_dig_port->max_lanes, port_name(port)))
  return;

 drm_connector_init(dev, connector, &intel_hdmi_connector_funcs,
      DRM_MODE_CONNECTOR_HDMIA);
 drm_connector_helper_add(connector, &intel_hdmi_connector_helper_funcs);

 connector->interlace_allowed = 1;
 connector->doublescan_allowed = 0;
 connector->stereo_allowed = 1;

 if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
  connector->ycbcr_420_allowed = 1;

 intel_hdmi->ddc_bus = intel_hdmi_ddc_pin(dev_priv, port);

 if (WARN_ON(port == PORT_A))
  return;
 intel_encoder->hpd_pin = intel_hpd_pin_default(dev_priv, port);

 if (HAS_DDI(dev_priv))
  intel_connector->get_hw_state = intel_ddi_connector_get_hw_state;
 else
  intel_connector->get_hw_state = intel_connector_get_hw_state;

 intel_hdmi_add_properties(intel_hdmi, connector);

 intel_connector_attach_encoder(intel_connector, intel_encoder);
 intel_hdmi->attached_connector = intel_connector;

 if (is_hdcp_supported(dev_priv, port)) {
  int ret = intel_hdcp_init(intel_connector,
       &intel_hdmi_hdcp_shim);
  if (ret)
   DRM_DEBUG_KMS("HDCP init failed, skipping.\n");
 }





 if (IS_G45(dev_priv)) {
  u32 temp = I915_READ(PEG_BAND_GAP_DATA);
  I915_WRITE(PEG_BAND_GAP_DATA, (temp & ~0xf) | 0xd);
 }

 intel_hdmi->cec_notifier = cec_notifier_get_conn(dev->dev,
        port_identifier(port));
 if (!intel_hdmi->cec_notifier)
  DRM_DEBUG_KMS("CEC notifier get failed\n");
}
