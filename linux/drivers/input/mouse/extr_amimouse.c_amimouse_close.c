
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;


 int IRQ_AMIGA_VERTB ;
 int free_irq (int ,struct input_dev*) ;

__attribute__((used)) static void amimouse_close(struct input_dev *dev)
{
 free_irq(IRQ_AMIGA_VERTB, dev);
}
