
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct as3935_state {int work; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 struct as3935_state* iio_priv (struct iio_dev*) ;
 int msecs_to_jiffies (int) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static irqreturn_t as3935_interrupt_handler(int irq, void *private)
{
 struct iio_dev *indio_dev = private;
 struct as3935_state *st = iio_priv(indio_dev);






 schedule_delayed_work(&st->work, msecs_to_jiffies(3));

 return IRQ_HANDLED;
}
