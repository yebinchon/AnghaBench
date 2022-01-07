
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int bma150_report_xyz (void*) ;

__attribute__((used)) static irqreturn_t bma150_irq_thread(int irq, void *dev)
{
 bma150_report_xyz(dev);

 return IRQ_HANDLED;
}
