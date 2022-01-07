
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_connector {TYPE_1__* ddc_bus; } ;
struct drm_connector {int dummy; } ;
struct TYPE_2__ {int has_aux; int aux; } ;


 int drm_dp_aux_unregister (int *) ;
 struct radeon_connector* to_radeon_connector (struct drm_connector*) ;

__attribute__((used)) static void radeon_connector_unregister(struct drm_connector *connector)
{
 struct radeon_connector *radeon_connector = to_radeon_connector(connector);

 if (radeon_connector->ddc_bus && radeon_connector->ddc_bus->has_aux) {
  drm_dp_aux_unregister(&radeon_connector->ddc_bus->aux);
  radeon_connector->ddc_bus->has_aux = 0;
 }
}
