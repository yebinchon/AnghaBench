
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int dummy; } ;


 int intel_dp_mst_get_ddc_modes (struct drm_connector*) ;

__attribute__((used)) static int intel_dp_mst_get_modes(struct drm_connector *connector)
{
 return intel_dp_mst_get_ddc_modes(connector);
}
