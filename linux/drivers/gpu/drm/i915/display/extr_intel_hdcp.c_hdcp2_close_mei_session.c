
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int port_data; } ;
struct TYPE_6__ {int dev; } ;
struct intel_connector {TYPE_2__ hdcp; TYPE_3__ base; } ;
struct i915_hdcp_comp_master {int mei_dev; TYPE_1__* ops; } ;
struct drm_i915_private {int hdcp_comp_mutex; struct i915_hdcp_comp_master* hdcp_master; } ;
struct TYPE_4__ {int (* close_hdcp_session ) (int ,int *) ;} ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (int ,int *) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static int hdcp2_close_mei_session(struct intel_connector *connector)
{
 struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 struct i915_hdcp_comp_master *comp;
 int ret;

 mutex_lock(&dev_priv->hdcp_comp_mutex);
 comp = dev_priv->hdcp_master;

 if (!comp || !comp->ops) {
  mutex_unlock(&dev_priv->hdcp_comp_mutex);
  return -EINVAL;
 }

 ret = comp->ops->close_hdcp_session(comp->mei_dev,
          &connector->hdcp.port_data);
 mutex_unlock(&dev_priv->hdcp_comp_mutex);

 return ret;
}
