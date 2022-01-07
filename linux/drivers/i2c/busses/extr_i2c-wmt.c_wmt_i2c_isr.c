
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmt_i2c_dev {int complete; scalar_t__ base; int cmd_status; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ REG_ISR ;
 int complete (int *) ;
 int readw (scalar_t__) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t wmt_i2c_isr(int irq, void *data)
{
 struct wmt_i2c_dev *i2c_dev = data;


 i2c_dev->cmd_status = readw(i2c_dev->base + REG_ISR);
 writew(i2c_dev->cmd_status, i2c_dev->base + REG_ISR);

 complete(&i2c_dev->complete);

 return IRQ_HANDLED;
}
