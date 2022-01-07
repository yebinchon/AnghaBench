
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_sor {int avdd_io_supply; int vdd_pll_supply; int hdmi_supply; } ;


 int regulator_disable (int ) ;

__attribute__((used)) static int tegra_sor_hdmi_remove(struct tegra_sor *sor)
{
 regulator_disable(sor->hdmi_supply);
 regulator_disable(sor->vdd_pll_supply);
 regulator_disable(sor->avdd_io_supply);

 return 0;
}
