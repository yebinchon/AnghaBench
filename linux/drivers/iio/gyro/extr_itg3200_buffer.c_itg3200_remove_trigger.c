
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct itg3200 {int trig; TYPE_1__* i2c; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int irq; } ;


 int free_irq (int ,int ) ;
 struct itg3200* iio_priv (struct iio_dev*) ;
 int iio_trigger_free (int ) ;
 int iio_trigger_unregister (int ) ;

void itg3200_remove_trigger(struct iio_dev *indio_dev)
{
 struct itg3200 *st = iio_priv(indio_dev);

 iio_trigger_unregister(st->trig);
 free_irq(st->i2c->irq, st->trig);
 iio_trigger_free(st->trig);
}
