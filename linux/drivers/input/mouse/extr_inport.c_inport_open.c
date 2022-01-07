
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;


 int EBUSY ;
 int INPORT_CONTROL_PORT ;
 int INPORT_DATA_PORT ;
 int INPORT_MODE_BASE ;
 int INPORT_MODE_IRQ ;
 int INPORT_REG_MODE ;
 int inport_interrupt ;
 int inport_irq ;
 int outb (int,int ) ;
 scalar_t__ request_irq (int ,int ,int ,char*,int *) ;

__attribute__((used)) static int inport_open(struct input_dev *dev)
{
 if (request_irq(inport_irq, inport_interrupt, 0, "inport", ((void*)0)))
  return -EBUSY;
 outb(INPORT_REG_MODE, INPORT_CONTROL_PORT);
 outb(INPORT_MODE_IRQ | INPORT_MODE_BASE, INPORT_DATA_PORT);

 return 0;
}
