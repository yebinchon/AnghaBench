
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsc2007 {int stopped; int irq; int wait; } ;


 int disable_irq (int ) ;
 int mb () ;
 int wake_up (int *) ;

__attribute__((used)) static void tsc2007_stop(struct tsc2007 *ts)
{
 ts->stopped = 1;
 mb();
 wake_up(&ts->wait);

 disable_irq(ts->irq);
}
