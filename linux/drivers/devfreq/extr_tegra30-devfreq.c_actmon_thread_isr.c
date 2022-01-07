
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct tegra_devfreq {TYPE_2__* devfreq; TYPE_3__* devices; } ;
typedef int irqreturn_t ;
struct TYPE_7__ {TYPE_1__* config; } ;
struct TYPE_6__ {int lock; } ;
struct TYPE_5__ {int irq_mask; } ;


 int ACTMON_GLB_STATUS ;
 unsigned int ARRAY_SIZE (TYPE_3__*) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int actmon_isr_device (struct tegra_devfreq*,TYPE_3__*) ;
 int actmon_readl (struct tegra_devfreq*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int update_devfreq (TYPE_2__*) ;

__attribute__((used)) static irqreturn_t actmon_thread_isr(int irq, void *data)
{
 struct tegra_devfreq *tegra = data;
 bool handled = 0;
 unsigned int i;
 u32 val;

 mutex_lock(&tegra->devfreq->lock);

 val = actmon_readl(tegra, ACTMON_GLB_STATUS);
 for (i = 0; i < ARRAY_SIZE(tegra->devices); i++) {
  if (val & tegra->devices[i].config->irq_mask) {
   actmon_isr_device(tegra, tegra->devices + i);
   handled = 1;
  }
 }

 if (handled)
  update_devfreq(tegra->devfreq);

 mutex_unlock(&tegra->devfreq->lock);

 return handled ? IRQ_HANDLED : IRQ_NONE;
}
