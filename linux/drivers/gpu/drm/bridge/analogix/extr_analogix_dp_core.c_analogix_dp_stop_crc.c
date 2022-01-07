
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int dummy; } ;
struct analogix_dp_device {int aux; } ;


 int drm_dp_stop_crc (int *) ;
 struct analogix_dp_device* to_dp (struct drm_connector*) ;

int analogix_dp_stop_crc(struct drm_connector *connector)
{
 struct analogix_dp_device *dp = to_dp(connector);

 return drm_dp_stop_crc(&dp->aux);
}
