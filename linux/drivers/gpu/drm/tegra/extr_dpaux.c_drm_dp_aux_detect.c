
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_dpaux {int dummy; } ;
struct drm_dp_aux {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int DPAUX_DP_AUXSTAT ;
 int DPAUX_DP_AUXSTAT_HPD_STATUS ;
 int connector_status_connected ;
 int connector_status_disconnected ;
 int tegra_dpaux_readl (struct tegra_dpaux*,int ) ;
 struct tegra_dpaux* to_dpaux (struct drm_dp_aux*) ;

enum drm_connector_status drm_dp_aux_detect(struct drm_dp_aux *aux)
{
 struct tegra_dpaux *dpaux = to_dpaux(aux);
 u32 value;

 value = tegra_dpaux_readl(dpaux, DPAUX_DP_AUXSTAT);

 if (value & DPAUX_DP_AUXSTAT_HPD_STATUS)
  return connector_status_connected;

 return connector_status_disconnected;
}
