
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_sdvo_connector {int dummy; } ;
struct drm_connector {int probed_modes; } ;


 scalar_t__ IS_LVDS (struct intel_sdvo_connector*) ;
 scalar_t__ IS_TV (struct intel_sdvo_connector*) ;
 int intel_sdvo_get_ddc_modes (struct drm_connector*) ;
 int intel_sdvo_get_lvds_modes (struct drm_connector*) ;
 int intel_sdvo_get_tv_modes (struct drm_connector*) ;
 int list_empty (int *) ;
 struct intel_sdvo_connector* to_intel_sdvo_connector (struct drm_connector*) ;

__attribute__((used)) static int intel_sdvo_get_modes(struct drm_connector *connector)
{
 struct intel_sdvo_connector *intel_sdvo_connector = to_intel_sdvo_connector(connector);

 if (IS_TV(intel_sdvo_connector))
  intel_sdvo_get_tv_modes(connector);
 else if (IS_LVDS(intel_sdvo_connector))
  intel_sdvo_get_lvds_modes(connector);
 else
  intel_sdvo_get_ddc_modes(connector);

 return !list_empty(&connector->probed_modes);
}
