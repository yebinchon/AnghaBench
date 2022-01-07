
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltdc_device {int irq_status; int regs; } ;
struct drm_device {struct ltdc_device* dev_private; } ;
typedef int irqreturn_t ;


 int IRQ_WAKE_THREAD ;
 int LTDC_ICR ;
 int LTDC_ISR ;
 int reg_read (int ,int ) ;
 int reg_write (int ,int ,int ) ;

__attribute__((used)) static irqreturn_t ltdc_irq(int irq, void *arg)
{
 struct drm_device *ddev = arg;
 struct ltdc_device *ldev = ddev->dev_private;


 ldev->irq_status = reg_read(ldev->regs, LTDC_ISR);
 reg_write(ldev->regs, LTDC_ICR, ldev->irq_status);

 return IRQ_WAKE_THREAD;
}
