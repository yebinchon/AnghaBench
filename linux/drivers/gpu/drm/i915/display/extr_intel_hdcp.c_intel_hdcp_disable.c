
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_hdcp {scalar_t__ value; int check_work; int mutex; scalar_t__ hdcp_encrypted; scalar_t__ hdcp2_encrypted; int shim; } ;
struct intel_connector {struct intel_hdcp hdcp; } ;


 scalar_t__ DRM_MODE_CONTENT_PROTECTION_UNDESIRED ;
 int ENOENT ;
 int _intel_hdcp2_disable (struct intel_connector*) ;
 int _intel_hdcp_disable (struct intel_connector*) ;
 int cancel_delayed_work_sync (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int intel_hdcp_disable(struct intel_connector *connector)
{
 struct intel_hdcp *hdcp = &connector->hdcp;
 int ret = 0;

 if (!hdcp->shim)
  return -ENOENT;

 mutex_lock(&hdcp->mutex);

 if (hdcp->value != DRM_MODE_CONTENT_PROTECTION_UNDESIRED) {
  hdcp->value = DRM_MODE_CONTENT_PROTECTION_UNDESIRED;
  if (hdcp->hdcp2_encrypted)
   ret = _intel_hdcp2_disable(connector);
  else if (hdcp->hdcp_encrypted)
   ret = _intel_hdcp_disable(connector);
 }

 mutex_unlock(&hdcp->mutex);
 cancel_delayed_work_sync(&hdcp->check_work);
 return ret;
}
