
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct walkera_dev {int pardevice; int timer; int parport; } ;
struct input_dev {int dummy; } ;


 int hrtimer_cancel (int *) ;
 struct walkera_dev* input_get_drvdata (struct input_dev*) ;
 int parport_disable_irq (int ) ;
 int parport_release (int ) ;

__attribute__((used)) static void walkera0701_close(struct input_dev *dev)
{
 struct walkera_dev *w = input_get_drvdata(dev);

 parport_disable_irq(w->parport);
 hrtimer_cancel(&w->timer);

 parport_release(w->pardevice);
}
