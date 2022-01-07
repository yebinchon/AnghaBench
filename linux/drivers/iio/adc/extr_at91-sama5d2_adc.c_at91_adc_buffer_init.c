
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int * setup_ops; int dev; } ;
struct at91_adc_state {TYPE_1__* selected_trig; } ;
struct TYPE_2__ {scalar_t__ hw_trig; } ;


 int at91_adc_trigger_handler ;
 int at91_buffer_setup_ops ;
 int devm_iio_triggered_buffer_setup (int *,struct iio_dev*,int *,int *,int *) ;
 int iio_pollfunc_store_time ;
 struct at91_adc_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int at91_adc_buffer_init(struct iio_dev *indio)
{
 struct at91_adc_state *st = iio_priv(indio);

 if (st->selected_trig->hw_trig) {
  return devm_iio_triggered_buffer_setup(&indio->dev, indio,
   &iio_pollfunc_store_time,
   &at91_adc_trigger_handler, &at91_buffer_setup_ops);
 }




 indio->setup_ops = &at91_buffer_setup_ops;

 return 0;
}
