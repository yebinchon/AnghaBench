
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dev; } ;
struct hdcp_port_data {int dummy; } ;
struct TYPE_6__ {struct hdcp_port_data port_data; } ;
struct intel_connector {TYPE_1__ base; TYPE_3__ hdcp; } ;
struct i915_hdcp_comp_master {int mei_dev; TYPE_2__* ops; } ;
struct hdcp2_ske_send_eks {int dummy; } ;
struct drm_i915_private {int hdcp_comp_mutex; struct i915_hdcp_comp_master* hdcp_master; } ;
struct TYPE_5__ {int (* get_session_key ) (int ,struct hdcp_port_data*,struct hdcp2_ske_send_eks*) ;} ;


 int DRM_DEBUG_KMS (char*,int) ;
 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (int ,struct hdcp_port_data*,struct hdcp2_ske_send_eks*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static int hdcp2_prepare_skey(struct intel_connector *connector,
         struct hdcp2_ske_send_eks *ske_data)
{
 struct hdcp_port_data *data = &connector->hdcp.port_data;
 struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 struct i915_hdcp_comp_master *comp;
 int ret;

 mutex_lock(&dev_priv->hdcp_comp_mutex);
 comp = dev_priv->hdcp_master;

 if (!comp || !comp->ops) {
  mutex_unlock(&dev_priv->hdcp_comp_mutex);
  return -EINVAL;
 }

 ret = comp->ops->get_session_key(comp->mei_dev, data, ske_data);
 if (ret < 0)
  DRM_DEBUG_KMS("Get session key failed. %d\n", ret);
 mutex_unlock(&dev_priv->hdcp_comp_mutex);

 return ret;
}
