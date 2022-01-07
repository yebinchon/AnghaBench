
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_connector {int dummy; } ;


 int drm_helper_probe_single_connector_modes (struct drm_connector*,int,int) ;

__attribute__((used)) static int
inno_hdmi_probe_single_connector_modes(struct drm_connector *connector,
           uint32_t maxX, uint32_t maxY)
{
 return drm_helper_probe_single_connector_modes(connector, 1920, 1080);
}
