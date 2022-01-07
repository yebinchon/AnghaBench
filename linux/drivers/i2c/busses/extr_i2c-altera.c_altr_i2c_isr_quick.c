
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct altr_i2c_dev {int isr_status; int isr_mask; scalar_t__ base; } ;
typedef int irqreturn_t ;


 scalar_t__ ALTR_I2C_ISR ;
 int IRQ_HANDLED ;
 int IRQ_WAKE_THREAD ;
 int readl (scalar_t__) ;

__attribute__((used)) static irqreturn_t altr_i2c_isr_quick(int irq, void *_dev)
{
 struct altr_i2c_dev *idev = _dev;
 irqreturn_t ret = IRQ_HANDLED;


 idev->isr_status = readl(idev->base + ALTR_I2C_ISR) & idev->isr_mask;
 if (idev->isr_status)
  ret = IRQ_WAKE_THREAD;

 return ret;
}
