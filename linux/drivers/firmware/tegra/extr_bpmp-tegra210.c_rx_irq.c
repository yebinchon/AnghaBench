
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_bpmp {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int tegra_bpmp_handle_rx (struct tegra_bpmp*) ;

__attribute__((used)) static irqreturn_t rx_irq(int irq, void *data)
{
 struct tegra_bpmp *bpmp = data;

 tegra_bpmp_handle_rx(bpmp);

 return IRQ_HANDLED;
}
