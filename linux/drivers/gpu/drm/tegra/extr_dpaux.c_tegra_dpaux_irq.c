
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_dpaux {int complete; int work; } ;
typedef int irqreturn_t ;


 int DPAUX_INTR_AUX ;
 int DPAUX_INTR_AUX_DONE ;
 int DPAUX_INTR_IRQ_EVENT ;
 int DPAUX_INTR_PLUG_EVENT ;
 int DPAUX_INTR_UNPLUG_EVENT ;
 int IRQ_HANDLED ;
 int complete (int *) ;
 int schedule_work (int *) ;
 int tegra_dpaux_readl (struct tegra_dpaux*,int ) ;
 int tegra_dpaux_writel (struct tegra_dpaux*,int,int ) ;

__attribute__((used)) static irqreturn_t tegra_dpaux_irq(int irq, void *data)
{
 struct tegra_dpaux *dpaux = data;
 irqreturn_t ret = IRQ_HANDLED;
 u32 value;


 value = tegra_dpaux_readl(dpaux, DPAUX_INTR_AUX);
 tegra_dpaux_writel(dpaux, value, DPAUX_INTR_AUX);

 if (value & (DPAUX_INTR_PLUG_EVENT | DPAUX_INTR_UNPLUG_EVENT))
  schedule_work(&dpaux->work);

 if (value & DPAUX_INTR_IRQ_EVENT) {

 }

 if (value & DPAUX_INTR_AUX_DONE)
  complete(&dpaux->complete);

 return ret;
}
