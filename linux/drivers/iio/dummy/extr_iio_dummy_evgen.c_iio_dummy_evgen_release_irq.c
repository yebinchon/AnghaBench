
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* inuse; int base; int lock; } ;


 TYPE_1__* iio_evgen ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void iio_dummy_evgen_release_irq(int irq)
{
 mutex_lock(&iio_evgen->lock);
 iio_evgen->inuse[irq - iio_evgen->base] = 0;
 mutex_unlock(&iio_evgen->lock);
}
