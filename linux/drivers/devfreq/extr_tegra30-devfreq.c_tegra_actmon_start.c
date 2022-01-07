
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_devfreq {int irq; int * devices; } ;


 int ACTMON_GLB_PERIOD_CTRL ;
 scalar_t__ ACTMON_SAMPLING_PERIOD ;
 unsigned int ARRAY_SIZE (int *) ;
 int actmon_write_barrier (struct tegra_devfreq*) ;
 int actmon_writel (struct tegra_devfreq*,scalar_t__,int ) ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int tegra_actmon_configure_device (struct tegra_devfreq*,int *) ;

__attribute__((used)) static void tegra_actmon_start(struct tegra_devfreq *tegra)
{
 unsigned int i;

 disable_irq(tegra->irq);

 actmon_writel(tegra, ACTMON_SAMPLING_PERIOD - 1,
        ACTMON_GLB_PERIOD_CTRL);

 for (i = 0; i < ARRAY_SIZE(tegra->devices); i++)
  tegra_actmon_configure_device(tegra, &tegra->devices[i]);

 actmon_write_barrier(tegra);

 enable_irq(tegra->irq);
}
