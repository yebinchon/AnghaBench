
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int dummy; } ;


 int radeon_connector_get_edid (struct drm_connector*) ;
 int radeon_ddc_get_modes (struct drm_connector*) ;
 int radeon_get_native_mode (struct drm_connector*) ;

__attribute__((used)) static int radeon_vga_get_modes(struct drm_connector *connector)
{
 int ret;

 radeon_connector_get_edid(connector);
 ret = radeon_ddc_get_modes(connector);

 radeon_get_native_mode(connector);

 return ret;
}
