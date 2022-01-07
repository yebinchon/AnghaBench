
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct intel_hdcp {scalar_t__ value; scalar_t__ content_type; int mutex; int prop_work; int check_work; int shim; } ;
struct intel_connector {struct intel_hdcp hdcp; } ;


 unsigned long DRM_HDCP2_CHECK_PERIOD_MS ;
 unsigned long DRM_HDCP_CHECK_PERIOD_MS ;
 scalar_t__ DRM_MODE_CONTENT_PROTECTION_ENABLED ;
 scalar_t__ DRM_MODE_HDCP_CONTENT_TYPE1 ;
 int EINVAL ;
 int ENOENT ;
 int WARN_ON (int) ;
 int _intel_hdcp2_enable (struct intel_connector*) ;
 int _intel_hdcp_enable (struct intel_connector*) ;
 scalar_t__ intel_hdcp2_capable (struct intel_connector*) ;
 scalar_t__ intel_hdcp_capable (struct intel_connector*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_delayed_work (int *,unsigned long) ;
 int schedule_work (int *) ;

int intel_hdcp_enable(struct intel_connector *connector, u8 content_type)
{
 struct intel_hdcp *hdcp = &connector->hdcp;
 unsigned long check_link_interval = DRM_HDCP_CHECK_PERIOD_MS;
 int ret = -EINVAL;

 if (!hdcp->shim)
  return -ENOENT;

 mutex_lock(&hdcp->mutex);
 WARN_ON(hdcp->value == DRM_MODE_CONTENT_PROTECTION_ENABLED);
 hdcp->content_type = content_type;





 if (intel_hdcp2_capable(connector)) {
  ret = _intel_hdcp2_enable(connector);
  if (!ret)
   check_link_interval = DRM_HDCP2_CHECK_PERIOD_MS;
 }





 if (ret && intel_hdcp_capable(connector) &&
     hdcp->content_type != DRM_MODE_HDCP_CONTENT_TYPE1) {
  ret = _intel_hdcp_enable(connector);
 }

 if (!ret) {
  schedule_delayed_work(&hdcp->check_work, check_link_interval);
  hdcp->value = DRM_MODE_CONTENT_PROTECTION_ENABLED;
  schedule_work(&hdcp->prop_work);
 }

 mutex_unlock(&hdcp->mutex);
 return ret;
}
