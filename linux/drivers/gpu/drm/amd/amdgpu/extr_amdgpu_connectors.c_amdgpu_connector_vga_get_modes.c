
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int dummy; } ;


 int amdgpu_connector_ddc_get_modes (struct drm_connector*) ;
 int amdgpu_connector_get_edid (struct drm_connector*) ;

__attribute__((used)) static int amdgpu_connector_vga_get_modes(struct drm_connector *connector)
{
 int ret;

 amdgpu_connector_get_edid(connector);
 ret = amdgpu_connector_ddc_get_modes(connector);

 return ret;
}
