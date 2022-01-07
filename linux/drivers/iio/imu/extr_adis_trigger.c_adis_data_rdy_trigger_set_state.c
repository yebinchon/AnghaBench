
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {int dummy; } ;
struct adis {int dummy; } ;


 int adis_enable_irq (struct adis*,int) ;
 struct adis* iio_trigger_get_drvdata (struct iio_trigger*) ;

__attribute__((used)) static int adis_data_rdy_trigger_set_state(struct iio_trigger *trig,
      bool state)
{
 struct adis *adis = iio_trigger_get_drvdata(trig);

 return adis_enable_irq(adis, state);
}
