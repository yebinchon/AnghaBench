
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_hdcp_shim {int dummy; } ;
struct TYPE_3__ {int streams; } ;
struct intel_hdcp {int hdcp2_supported; int cp_irq_queue; int prop_work; int check_work; int mutex; struct intel_hdcp_shim const* shim; TYPE_1__ port_data; } ;
struct TYPE_4__ {int dev; } ;
struct intel_connector {TYPE_2__ base; struct intel_hdcp hdcp; } ;
struct drm_i915_private {int dummy; } ;


 int EINVAL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int drm_connector_attach_content_protection_property (TYPE_2__*,int) ;
 int init_waitqueue_head (int *) ;
 int intel_hdcp2_init (struct intel_connector*,struct intel_hdcp_shim const*) ;
 int intel_hdcp_check_work ;
 int intel_hdcp_prop_work ;
 scalar_t__ is_hdcp2_supported (struct drm_i915_private*) ;
 int kfree (int ) ;
 int mutex_init (int *) ;
 struct drm_i915_private* to_i915 (int ) ;

int intel_hdcp_init(struct intel_connector *connector,
      const struct intel_hdcp_shim *shim)
{
 struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 struct intel_hdcp *hdcp = &connector->hdcp;
 int ret;

 if (!shim)
  return -EINVAL;

 if (is_hdcp2_supported(dev_priv))
  intel_hdcp2_init(connector, shim);

 ret =
 drm_connector_attach_content_protection_property(&connector->base,
        hdcp->hdcp2_supported);
 if (ret) {
  hdcp->hdcp2_supported = 0;
  kfree(hdcp->port_data.streams);
  return ret;
 }

 hdcp->shim = shim;
 mutex_init(&hdcp->mutex);
 INIT_DELAYED_WORK(&hdcp->check_work, intel_hdcp_check_work);
 INIT_WORK(&hdcp->prop_work, intel_hdcp_prop_work);
 init_waitqueue_head(&hdcp->cp_irq_queue);

 return 0;
}
