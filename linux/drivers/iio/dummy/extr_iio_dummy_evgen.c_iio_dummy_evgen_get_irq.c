
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* inuse; int lock; int irq_sim; } ;


 int ENODEV ;
 int ENOMEM ;
 int IIO_EVENTGEN_NO ;
 TYPE_1__* iio_evgen ;
 int irq_sim_irqnum (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int iio_dummy_evgen_get_irq(void)
{
 int i, ret = 0;

 if (!iio_evgen)
  return -ENODEV;

 mutex_lock(&iio_evgen->lock);
 for (i = 0; i < IIO_EVENTGEN_NO; i++) {
  if (!iio_evgen->inuse[i]) {
   ret = irq_sim_irqnum(&iio_evgen->irq_sim, i);
   iio_evgen->inuse[i] = 1;
   break;
  }
 }
 mutex_unlock(&iio_evgen->lock);
 if (i == IIO_EVENTGEN_NO)
  return -ENOMEM;

 return ret;
}
