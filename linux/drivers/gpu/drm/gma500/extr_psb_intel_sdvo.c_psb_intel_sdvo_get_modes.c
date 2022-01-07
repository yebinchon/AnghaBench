
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psb_intel_sdvo_connector {int dummy; } ;
struct drm_connector {int probed_modes; } ;


 scalar_t__ IS_LVDS (struct psb_intel_sdvo_connector*) ;
 scalar_t__ IS_TV (struct psb_intel_sdvo_connector*) ;
 int list_empty (int *) ;
 int psb_intel_sdvo_get_ddc_modes (struct drm_connector*) ;
 int psb_intel_sdvo_get_lvds_modes (struct drm_connector*) ;
 int psb_intel_sdvo_get_tv_modes (struct drm_connector*) ;
 struct psb_intel_sdvo_connector* to_psb_intel_sdvo_connector (struct drm_connector*) ;

__attribute__((used)) static int psb_intel_sdvo_get_modes(struct drm_connector *connector)
{
 struct psb_intel_sdvo_connector *psb_intel_sdvo_connector = to_psb_intel_sdvo_connector(connector);

 if (IS_TV(psb_intel_sdvo_connector))
  psb_intel_sdvo_get_tv_modes(connector);
 else if (IS_LVDS(psb_intel_sdvo_connector))
  psb_intel_sdvo_get_lvds_modes(connector);
 else
  psb_intel_sdvo_get_ddc_modes(connector);

 return !list_empty(&connector->probed_modes);
}
