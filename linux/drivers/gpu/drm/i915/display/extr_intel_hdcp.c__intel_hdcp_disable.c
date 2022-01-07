
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct intel_hdcp {int hdcp_encrypted; TYPE_5__* shim; } ;
struct TYPE_7__ {int port; } ;
struct intel_digital_port {TYPE_2__ base; } ;
struct TYPE_8__ {int id; } ;
struct TYPE_9__ {TYPE_3__ base; int name; TYPE_1__* dev; } ;
struct intel_connector {TYPE_4__ base; struct intel_hdcp hdcp; } ;
struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;
struct TYPE_10__ {int (* toggle_signalling ) (struct intel_digital_port*,int) ;} ;
struct TYPE_6__ {struct drm_i915_private* dev_private; } ;


 int DRM_DEBUG_KMS (char*,...) ;
 int DRM_ERROR (char*) ;
 int ENCRYPT_STATUS_CHANGE_TIMEOUT_MS ;
 int ETIMEDOUT ;
 int I915_WRITE (int ,int ) ;
 int PORT_HDCP_CONF (int) ;
 int PORT_HDCP_STATUS (int) ;
 struct intel_digital_port* conn_to_dig_port (struct intel_connector*) ;
 scalar_t__ intel_de_wait_for_clear (struct drm_i915_private*,int ,int ,int ) ;
 int stub1 (struct intel_digital_port*,int) ;

__attribute__((used)) static int _intel_hdcp_disable(struct intel_connector *connector)
{
 struct intel_hdcp *hdcp = &connector->hdcp;
 struct drm_i915_private *dev_priv = connector->base.dev->dev_private;
 struct intel_digital_port *intel_dig_port = conn_to_dig_port(connector);
 enum port port = intel_dig_port->base.port;
 int ret;

 DRM_DEBUG_KMS("[%s:%d] HDCP is being disabled...\n",
        connector->base.name, connector->base.base.id);

 hdcp->hdcp_encrypted = 0;
 I915_WRITE(PORT_HDCP_CONF(port), 0);
 if (intel_de_wait_for_clear(dev_priv, PORT_HDCP_STATUS(port), ~0,
        ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
  DRM_ERROR("Failed to disable HDCP, timeout clearing status\n");
  return -ETIMEDOUT;
 }

 ret = hdcp->shim->toggle_signalling(intel_dig_port, 0);
 if (ret) {
  DRM_ERROR("Failed to disable HDCP signalling\n");
  return ret;
 }

 DRM_DEBUG_KMS("HDCP is disabled\n");
 return 0;
}
