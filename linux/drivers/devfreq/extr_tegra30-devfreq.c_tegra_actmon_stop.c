
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_devfreq {int irq; int * devices; } ;


 int ACTMON_DEV_CTRL ;
 int ACTMON_DEV_INTR_STATUS ;
 int ACTMON_INTR_STATUS_CLEAR ;
 unsigned int ARRAY_SIZE (int *) ;
 int actmon_write_barrier (struct tegra_devfreq*) ;
 int device_writel (int *,int,int ) ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;

__attribute__((used)) static void tegra_actmon_stop(struct tegra_devfreq *tegra)
{
 unsigned int i;

 disable_irq(tegra->irq);

 for (i = 0; i < ARRAY_SIZE(tegra->devices); i++) {
  device_writel(&tegra->devices[i], 0x00000000, ACTMON_DEV_CTRL);
  device_writel(&tegra->devices[i], ACTMON_INTR_STATUS_CLEAR,
         ACTMON_DEV_INTR_STATUS);
 }

 actmon_write_barrier(tegra);

 enable_irq(tegra->irq);
}
