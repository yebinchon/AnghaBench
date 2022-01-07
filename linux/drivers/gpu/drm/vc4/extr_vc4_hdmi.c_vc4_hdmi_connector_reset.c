
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int dummy; } ;


 int drm_atomic_helper_connector_reset (struct drm_connector*) ;
 int drm_atomic_helper_connector_tv_reset (struct drm_connector*) ;

__attribute__((used)) static void vc4_hdmi_connector_reset(struct drm_connector *connector)
{
 drm_atomic_helper_connector_reset(connector);
 drm_atomic_helper_connector_tv_reset(connector);
}
