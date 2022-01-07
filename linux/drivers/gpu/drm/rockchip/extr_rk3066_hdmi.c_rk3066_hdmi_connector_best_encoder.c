
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;
struct rk3066_hdmi {struct drm_encoder encoder; } ;
struct drm_connector {int dummy; } ;


 struct rk3066_hdmi* to_rk3066_hdmi (struct drm_connector*) ;

__attribute__((used)) static struct drm_encoder *
rk3066_hdmi_connector_best_encoder(struct drm_connector *connector)
{
 struct rk3066_hdmi *hdmi = to_rk3066_hdmi(connector);

 return &hdmi->encoder;
}
