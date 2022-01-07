
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {scalar_t__ subirq_base; int pool_lock; int pool; } ;


 int CONFIG_IIO_CONSUMERS_PER_TRIGGER ;
 int bitmap_find_free_region (int ,int ,int ) ;
 int ilog2 (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int iio_trigger_get_irq(struct iio_trigger *trig)
{
 int ret;
 mutex_lock(&trig->pool_lock);
 ret = bitmap_find_free_region(trig->pool,
          CONFIG_IIO_CONSUMERS_PER_TRIGGER,
          ilog2(1));
 mutex_unlock(&trig->pool_lock);
 if (ret >= 0)
  ret += trig->subirq_base;

 return ret;
}
