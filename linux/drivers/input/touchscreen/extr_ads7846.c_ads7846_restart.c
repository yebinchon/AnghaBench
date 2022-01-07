
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ads7846 {int stopped; TYPE_1__* spi; int suspended; int disabled; } ;
struct TYPE_2__ {int irq; } ;


 int enable_irq (int ) ;
 int mb () ;

__attribute__((used)) static void ads7846_restart(struct ads7846 *ts)
{
 if (!ts->disabled && !ts->suspended) {

  ts->stopped = 0;
  mb();
  enable_irq(ts->spi->irq);
 }
}
