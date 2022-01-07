
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adis {int trig; TYPE_1__* spi; } ;
struct TYPE_2__ {int irq; } ;


 int free_irq (int ,int ) ;
 int iio_trigger_free (int ) ;
 int iio_trigger_unregister (int ) ;

void adis_remove_trigger(struct adis *adis)
{
 iio_trigger_unregister(adis->trig);
 free_irq(adis->spi->irq, adis->trig);
 iio_trigger_free(adis->trig);
}
