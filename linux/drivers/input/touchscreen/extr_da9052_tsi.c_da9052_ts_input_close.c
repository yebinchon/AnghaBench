
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct da9052_tsi {int stopped; int da9052; scalar_t__ adc_on; int ts_pen_work; } ;


 int DA9052_IRQ_PENDOWN ;
 int DA9052_IRQ_TSIREADY ;
 int DA9052_TSI_CONT_A_REG ;
 int cancel_delayed_work_sync (int *) ;
 int da9052_disable_irq (int ,int ) ;
 int da9052_enable_irq (int ,int ) ;
 int da9052_reg_update (int ,int ,int,int ) ;
 int da9052_ts_adc_toggle (struct da9052_tsi*,int) ;
 struct da9052_tsi* input_get_drvdata (struct input_dev*) ;
 int mb () ;

__attribute__((used)) static void da9052_ts_input_close(struct input_dev *input_dev)
{
 struct da9052_tsi *tsi = input_get_drvdata(input_dev);

 tsi->stopped = 1;
 mb();
 da9052_disable_irq(tsi->da9052, DA9052_IRQ_PENDOWN);
 cancel_delayed_work_sync(&tsi->ts_pen_work);

 if (tsi->adc_on) {
  da9052_disable_irq(tsi->da9052, DA9052_IRQ_TSIREADY);
  da9052_ts_adc_toggle(tsi, 0);






  da9052_enable_irq(tsi->da9052, DA9052_IRQ_PENDOWN);
 }


 da9052_reg_update(tsi->da9052, DA9052_TSI_CONT_A_REG, 1 << 1, 0);
}
