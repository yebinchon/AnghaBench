
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_dev {int input; scalar_t__ addr; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ REG_READ ;
 unsigned int __raw_readl (scalar_t__) ;
 int input_event (int ,unsigned int,unsigned int,unsigned int) ;
 int input_sync (int ) ;

__attribute__((used)) static irqreturn_t events_interrupt(int irq, void *dev_id)
{
 struct event_dev *edev = dev_id;
 unsigned int type, code, value;

 type = __raw_readl(edev->addr + REG_READ);
 code = __raw_readl(edev->addr + REG_READ);
 value = __raw_readl(edev->addr + REG_READ);

 input_event(edev->input, type, code, value);
 input_sync(edev->input);
 return IRQ_HANDLED;
}
