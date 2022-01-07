
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int dummy; } ;


 int amdgpu_dm_connector_get_modes (struct drm_connector*) ;

__attribute__((used)) static int get_modes(struct drm_connector *connector)
{
 return amdgpu_dm_connector_get_modes(connector);
}
