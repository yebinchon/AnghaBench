
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct i2c_adapter* ddc; } ;
struct tegra_sor {TYPE_1__ output; } ;
struct i2c_adapter {int dummy; } ;


 int drm_scdc_set_high_tmds_clock_ratio (struct i2c_adapter*,int) ;
 int drm_scdc_set_scrambling (struct i2c_adapter*,int) ;
 int tegra_sor_hdmi_disable_scrambling (struct tegra_sor*) ;

__attribute__((used)) static void tegra_sor_hdmi_scdc_disable(struct tegra_sor *sor)
{
 struct i2c_adapter *ddc = sor->output.ddc;

 drm_scdc_set_high_tmds_clock_ratio(ddc, 0);
 drm_scdc_set_scrambling(ddc, 0);

 tegra_sor_hdmi_disable_scrambling(sor);
}
