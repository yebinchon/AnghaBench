
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ads7846 {int stopped; TYPE_1__* spi; int wait; int suspended; int disabled; } ;
struct TYPE_2__ {int irq; } ;


 int disable_irq (int ) ;
 int mb () ;
 int wake_up (int *) ;

__attribute__((used)) static void ads7846_stop(struct ads7846 *ts)
{
 if (!ts->disabled && !ts->suspended) {

  ts->stopped = 1;
  mb();
  wake_up(&ts->wait);
  disable_irq(ts->spi->irq);
 }
}
