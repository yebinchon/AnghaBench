
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct at91_adc_state {int trigger_number; int * trig; } ;


 struct at91_adc_state* iio_priv (struct iio_dev*) ;
 int iio_trigger_free (int ) ;
 int iio_trigger_unregister (int ) ;

__attribute__((used)) static void at91_adc_trigger_remove(struct iio_dev *idev)
{
 struct at91_adc_state *st = iio_priv(idev);
 int i;

 for (i = 0; i < st->trigger_number; i++) {
  iio_trigger_unregister(st->trig[i]);
  iio_trigger_free(st->trig[i]);
 }
}
