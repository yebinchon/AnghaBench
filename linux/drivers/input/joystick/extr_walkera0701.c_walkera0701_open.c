
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct walkera_dev {int parport; int pardevice; } ;
struct input_dev {int dummy; } ;


 int EBUSY ;
 struct walkera_dev* input_get_drvdata (struct input_dev*) ;
 scalar_t__ parport_claim (int ) ;
 int parport_enable_irq (int ) ;

__attribute__((used)) static int walkera0701_open(struct input_dev *dev)
{
 struct walkera_dev *w = input_get_drvdata(dev);

 if (parport_claim(w->pardevice))
  return -EBUSY;

 parport_enable_irq(w->parport);
 return 0;
}
