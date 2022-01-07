
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_hdcp {TYPE_1__* shim; int hdcp2_supported; } ;
struct intel_digital_port {int dummy; } ;
struct TYPE_4__ {int dev; } ;
struct intel_connector {struct intel_hdcp hdcp; TYPE_2__ base; } ;
struct drm_i915_private {int hdcp_comp_mutex; int hdcp_master; int hdcp_comp_added; } ;
struct TYPE_3__ {int (* hdcp_2_2_capable ) (struct intel_digital_port*,int*) ;} ;


 struct intel_digital_port* conn_to_dig_port (struct intel_connector*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct intel_digital_port*,int*) ;
 struct drm_i915_private* to_i915 (int ) ;

bool intel_hdcp2_capable(struct intel_connector *connector)
{
 struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 struct intel_digital_port *intel_dig_port = conn_to_dig_port(connector);
 struct intel_hdcp *hdcp = &connector->hdcp;
 bool capable = 0;


 if (!hdcp->hdcp2_supported)
  return 0;


 mutex_lock(&dev_priv->hdcp_comp_mutex);
 if (!dev_priv->hdcp_comp_added || !dev_priv->hdcp_master) {
  mutex_unlock(&dev_priv->hdcp_comp_mutex);
  return 0;
 }
 mutex_unlock(&dev_priv->hdcp_comp_mutex);


 hdcp->shim->hdcp_2_2_capable(intel_dig_port, &capable);

 return capable;
}
