
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int dummy; } ;
struct cdn_dp_device {int lock; scalar_t__ connected; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int connector_status_connected ;
 int connector_status_disconnected ;
 struct cdn_dp_device* connector_to_dp (struct drm_connector*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static enum drm_connector_status
cdn_dp_connector_detect(struct drm_connector *connector, bool force)
{
 struct cdn_dp_device *dp = connector_to_dp(connector);
 enum drm_connector_status status = connector_status_disconnected;

 mutex_lock(&dp->lock);
 if (dp->connected)
  status = connector_status_connected;
 mutex_unlock(&dp->lock);

 return status;
}
