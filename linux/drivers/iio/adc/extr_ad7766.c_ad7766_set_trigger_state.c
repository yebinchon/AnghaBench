
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_trigger {int dummy; } ;
struct ad7766 {TYPE_1__* spi; } ;
struct TYPE_2__ {int irq; } ;


 int disable_irq (int ) ;
 int enable_irq (int ) ;
 struct ad7766* iio_trigger_get_drvdata (struct iio_trigger*) ;

__attribute__((used)) static int ad7766_set_trigger_state(struct iio_trigger *trig, bool enable)
{
 struct ad7766 *ad7766 = iio_trigger_get_drvdata(trig);

 if (enable)
  enable_irq(ad7766->spi->irq);
 else
  disable_irq(ad7766->spi->irq);

 return 0;
}
