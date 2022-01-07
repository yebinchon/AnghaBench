
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {int pool_lock; int pool; scalar_t__ subirq_base; } ;


 int clear_bit (scalar_t__,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void iio_trigger_put_irq(struct iio_trigger *trig, int irq)
{
 mutex_lock(&trig->pool_lock);
 clear_bit(irq - trig->subirq_base, trig->pool);
 mutex_unlock(&trig->pool_lock);
}
