
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_sor {int scdc; scalar_t__ scdc_enabled; } ;


 int cancel_delayed_work_sync (int *) ;
 int tegra_sor_hdmi_scdc_disable (struct tegra_sor*) ;

__attribute__((used)) static void tegra_sor_hdmi_scdc_stop(struct tegra_sor *sor)
{
 if (sor->scdc_enabled) {
  cancel_delayed_work_sync(&sor->scdc);
  tegra_sor_hdmi_scdc_disable(sor);
 }
}
