
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_connector {int dummy; } ;
struct amdgpu_connector {TYPE_1__* ddc_bus; } ;
struct TYPE_2__ {int has_aux; int aux; } ;


 int drm_dp_aux_unregister (int *) ;
 struct amdgpu_connector* to_amdgpu_connector (struct drm_connector*) ;

__attribute__((used)) static void amdgpu_connector_unregister(struct drm_connector *connector)
{
 struct amdgpu_connector *amdgpu_connector = to_amdgpu_connector(connector);

 if (amdgpu_connector->ddc_bus && amdgpu_connector->ddc_bus->has_aux) {
  drm_dp_aux_unregister(&amdgpu_connector->ddc_bus->aux);
  amdgpu_connector->ddc_bus->has_aux = 0;
 }
}
