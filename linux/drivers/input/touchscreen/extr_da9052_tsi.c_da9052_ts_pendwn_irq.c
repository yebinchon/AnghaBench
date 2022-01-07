
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9052_tsi {int ts_pen_work; int da9052; int stopped; } ;
typedef int irqreturn_t ;


 int DA9052_IRQ_PENDOWN ;
 int DA9052_IRQ_TSIREADY ;
 int HZ ;
 int IRQ_HANDLED ;
 int da9052_disable_irq_nosync (int ,int ) ;
 int da9052_enable_irq (int ,int ) ;
 int da9052_ts_adc_toggle (struct da9052_tsi*,int) ;
 int schedule_delayed_work (int *,int) ;

__attribute__((used)) static irqreturn_t da9052_ts_pendwn_irq(int irq, void *data)
{
 struct da9052_tsi *tsi = data;

 if (!tsi->stopped) {

  da9052_disable_irq_nosync(tsi->da9052, DA9052_IRQ_PENDOWN);
  da9052_enable_irq(tsi->da9052, DA9052_IRQ_TSIREADY);

  da9052_ts_adc_toggle(tsi, 1);

  schedule_delayed_work(&tsi->ts_pen_work, HZ / 50);
 }

 return IRQ_HANDLED;
}
