
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pixcir_report_data {scalar_t__ num_touches; } ;
struct pixcir_i2c_ts_data {int input; int gpio_attb; scalar_t__ running; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ gpiod_get_value_cansleep (int ) ;
 int input_mt_sync_frame (int ) ;
 int input_sync (int ) ;
 int msleep (int) ;
 int pixcir_ts_parse (struct pixcir_i2c_ts_data*,struct pixcir_report_data*) ;
 int pixcir_ts_report (struct pixcir_i2c_ts_data*,struct pixcir_report_data*) ;

__attribute__((used)) static irqreturn_t pixcir_ts_isr(int irq, void *dev_id)
{
 struct pixcir_i2c_ts_data *tsdata = dev_id;
 struct pixcir_report_data report;

 while (tsdata->running) {

  pixcir_ts_parse(tsdata, &report);


  pixcir_ts_report(tsdata, &report);

  if (gpiod_get_value_cansleep(tsdata->gpio_attb)) {
   if (report.num_touches) {




    input_mt_sync_frame(tsdata->input);
    input_sync(tsdata->input);
   }
   break;
  }

  msleep(20);
 }

 return IRQ_HANDLED;
}
