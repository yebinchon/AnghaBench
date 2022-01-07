
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_connector {TYPE_1__* state; int name; } ;
struct analogix_dp_device {int aux; } ;
struct TYPE_2__ {int crtc; } ;


 int DRM_ERROR (char*,int ) ;
 int EINVAL ;
 int drm_dp_start_crc (int *,int ) ;
 struct analogix_dp_device* to_dp (struct drm_connector*) ;

int analogix_dp_start_crc(struct drm_connector *connector)
{
 struct analogix_dp_device *dp = to_dp(connector);

 if (!connector->state->crtc) {
  DRM_ERROR("Connector %s doesn't currently have a CRTC.\n",
     connector->name);
  return -EINVAL;
 }

 return drm_dp_start_crc(&dp->aux, connector->state->crtc);
}
