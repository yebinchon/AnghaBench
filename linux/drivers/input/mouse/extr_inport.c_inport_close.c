
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;


 int INPORT_CONTROL_PORT ;
 int INPORT_DATA_PORT ;
 int INPORT_MODE_BASE ;
 int INPORT_REG_MODE ;
 int free_irq (int ,int *) ;
 int inport_irq ;
 int outb (int ,int ) ;

__attribute__((used)) static void inport_close(struct input_dev *dev)
{
 outb(INPORT_REG_MODE, INPORT_CONTROL_PORT);
 outb(INPORT_MODE_BASE, INPORT_DATA_PORT);
 free_irq(inport_irq, ((void*)0));
}
