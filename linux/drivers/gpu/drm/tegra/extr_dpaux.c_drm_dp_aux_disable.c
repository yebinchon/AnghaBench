
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dpaux {int dummy; } ;
struct drm_dp_aux {int dummy; } ;


 int tegra_dpaux_pad_power_down (struct tegra_dpaux*) ;
 struct tegra_dpaux* to_dpaux (struct drm_dp_aux*) ;

int drm_dp_aux_disable(struct drm_dp_aux *aux)
{
 struct tegra_dpaux *dpaux = to_dpaux(aux);

 tegra_dpaux_pad_power_down(dpaux);

 return 0;
}
