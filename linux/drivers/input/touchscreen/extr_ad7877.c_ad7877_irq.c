
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ad7877 {int lock; int timer; TYPE_1__* spi; int msg; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int IRQ_HANDLED ;
 scalar_t__ TS_PEN_UP_TIMEOUT ;
 int ad7877_process_data (struct ad7877*) ;
 int dev_err (int *,char*,int) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int spi_sync (TYPE_1__*,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t ad7877_irq(int irq, void *handle)
{
 struct ad7877 *ts = handle;
 unsigned long flags;
 int error;

 error = spi_sync(ts->spi, &ts->msg);
 if (error) {
  dev_err(&ts->spi->dev, "spi_sync --> %d\n", error);
  goto out;
 }

 spin_lock_irqsave(&ts->lock, flags);
 error = ad7877_process_data(ts);
 if (!error)
  mod_timer(&ts->timer, jiffies + TS_PEN_UP_TIMEOUT);
 spin_unlock_irqrestore(&ts->lock, flags);

out:
 return IRQ_HANDLED;
}
