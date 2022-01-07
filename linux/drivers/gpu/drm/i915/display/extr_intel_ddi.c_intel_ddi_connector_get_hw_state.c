
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_encoder {int port; int power_domain; int (* get_hw_state ) (struct intel_encoder*,int*) ;} ;
struct TYPE_2__ {int connector_type; struct drm_device* dev; } ;
struct intel_connector {TYPE_1__ base; struct intel_encoder* encoder; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
typedef int intel_wakeref_t ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef enum port { ____Placeholder_port } port ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DRM_MODE_CONNECTOR_DisplayPort ;
 int DRM_MODE_CONNECTOR_HDMIA ;
 int DRM_MODE_CONNECTOR_VGA ;
 int DRM_MODE_CONNECTOR_eDP ;
 scalar_t__ HAS_TRANSCODER_EDP (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int PORT_A ;
 int TRANSCODER_EDP ;
 int TRANS_DDI_FUNC_CTL (int) ;





 int TRANS_DDI_MODE_SELECT_MASK ;
 int intel_display_power_get_if_enabled (struct drm_i915_private*,int ) ;
 int intel_display_power_put (struct drm_i915_private*,int ,int ) ;
 int stub1 (struct intel_encoder*,int*) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_connector)
{
 struct drm_device *dev = intel_connector->base.dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 struct intel_encoder *encoder = intel_connector->encoder;
 int type = intel_connector->base.connector_type;
 enum port port = encoder->port;
 enum transcoder cpu_transcoder;
 intel_wakeref_t wakeref;
 enum pipe pipe = 0;
 u32 tmp;
 bool ret;

 wakeref = intel_display_power_get_if_enabled(dev_priv,
           encoder->power_domain);
 if (!wakeref)
  return 0;

 if (!encoder->get_hw_state(encoder, &pipe)) {
  ret = 0;
  goto out;
 }

 if (HAS_TRANSCODER_EDP(dev_priv) && port == PORT_A)
  cpu_transcoder = TRANSCODER_EDP;
 else
  cpu_transcoder = (enum transcoder) pipe;

 tmp = I915_READ(TRANS_DDI_FUNC_CTL(cpu_transcoder));

 switch (tmp & TRANS_DDI_MODE_SELECT_MASK) {
 case 128:
 case 130:
  ret = type == DRM_MODE_CONNECTOR_HDMIA;
  break;

 case 131:
  ret = type == DRM_MODE_CONNECTOR_eDP ||
        type == DRM_MODE_CONNECTOR_DisplayPort;
  break;

 case 132:


  ret = 0;
  break;

 case 129:
  ret = type == DRM_MODE_CONNECTOR_VGA;
  break;

 default:
  ret = 0;
  break;
 }

out:
 intel_display_power_put(dev_priv, encoder->power_domain, wakeref);

 return ret;
}
