
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_sor {scalar_t__ aux; } ;
struct tegra_output {int dummy; } ;
struct drm_connector {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 struct tegra_output* connector_to_output (struct drm_connector*) ;
 int drm_dp_aux_detect (scalar_t__) ;
 int tegra_output_connector_detect (struct drm_connector*,int) ;
 struct tegra_sor* to_sor (struct tegra_output*) ;

__attribute__((used)) static enum drm_connector_status
tegra_sor_connector_detect(struct drm_connector *connector, bool force)
{
 struct tegra_output *output = connector_to_output(connector);
 struct tegra_sor *sor = to_sor(output);

 if (sor->aux)
  return drm_dp_aux_detect(sor->aux);

 return tegra_output_connector_detect(connector, force);
}
