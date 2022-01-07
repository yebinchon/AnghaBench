
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;
struct drm_connector {int dummy; } ;
struct analogix_dp_device {struct drm_encoder* encoder; } ;


 struct analogix_dp_device* to_dp (struct drm_connector*) ;

__attribute__((used)) static struct drm_encoder *
analogix_dp_best_encoder(struct drm_connector *connector)
{
 struct analogix_dp_device *dp = to_dp(connector);

 return dp->encoder;
}
