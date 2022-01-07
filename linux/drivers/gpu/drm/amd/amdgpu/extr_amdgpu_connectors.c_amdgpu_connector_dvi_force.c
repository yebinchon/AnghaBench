
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {scalar_t__ force; } ;
struct amdgpu_connector {int use_digital; } ;


 scalar_t__ DRM_FORCE_ON ;
 scalar_t__ DRM_FORCE_ON_DIGITAL ;
 struct amdgpu_connector* to_amdgpu_connector (struct drm_connector*) ;

__attribute__((used)) static void amdgpu_connector_dvi_force(struct drm_connector *connector)
{
 struct amdgpu_connector *amdgpu_connector = to_amdgpu_connector(connector);
 if (connector->force == DRM_FORCE_ON)
  amdgpu_connector->use_digital = 0;
 if (connector->force == DRM_FORCE_ON_DIGITAL)
  amdgpu_connector->use_digital = 1;
}
