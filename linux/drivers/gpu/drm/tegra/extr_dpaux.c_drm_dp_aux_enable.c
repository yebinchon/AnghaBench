
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dpaux {int dummy; } ;
struct drm_dp_aux {int dummy; } ;


 int DPAUX_PADCTL_FUNC_AUX ;
 int tegra_dpaux_pad_config (struct tegra_dpaux*,int ) ;
 struct tegra_dpaux* to_dpaux (struct drm_dp_aux*) ;

int drm_dp_aux_enable(struct drm_dp_aux *aux)
{
 struct tegra_dpaux *dpaux = to_dpaux(aux);

 return tegra_dpaux_pad_config(dpaux, DPAUX_PADCTL_FUNC_AUX);
}
