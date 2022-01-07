
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; int irq_sim; int base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IIO_EVENTGEN_NO ;
 TYPE_1__* iio_evgen ;
 int irq_sim_init (int *,int ) ;
 int irq_sim_irqnum (int *,int ) ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kzalloc (int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static int iio_dummy_evgen_create(void)
{
 int ret;

 iio_evgen = kzalloc(sizeof(*iio_evgen), GFP_KERNEL);
 if (!iio_evgen)
  return -ENOMEM;

 ret = irq_sim_init(&iio_evgen->irq_sim, IIO_EVENTGEN_NO);
 if (ret < 0) {
  kfree(iio_evgen);
  return ret;
 }

 iio_evgen->base = irq_sim_irqnum(&iio_evgen->irq_sim, 0);
 mutex_init(&iio_evgen->lock);

 return 0;
}
