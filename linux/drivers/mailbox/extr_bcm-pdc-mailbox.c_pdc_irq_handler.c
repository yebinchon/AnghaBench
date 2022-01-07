
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pdc_state {int rx_tasklet; scalar_t__ pdc_reg_vbase; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ PDC_INTMASK_OFFSET ;
 scalar_t__ PDC_INTSTATUS_OFFSET ;
 struct pdc_state* dev_get_drvdata (struct device*) ;
 scalar_t__ ioread32 (scalar_t__) ;
 int iowrite32 (scalar_t__,scalar_t__) ;
 int tasklet_schedule (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t pdc_irq_handler(int irq, void *data)
{
 struct device *dev = (struct device *)data;
 struct pdc_state *pdcs = dev_get_drvdata(dev);
 u32 intstatus = ioread32(pdcs->pdc_reg_vbase + PDC_INTSTATUS_OFFSET);

 if (unlikely(intstatus == 0))
  return IRQ_NONE;


 iowrite32(0, pdcs->pdc_reg_vbase + PDC_INTMASK_OFFSET);


 iowrite32(intstatus, pdcs->pdc_reg_vbase + PDC_INTSTATUS_OFFSET);


 tasklet_schedule(&pdcs->rx_tasklet);
 return IRQ_HANDLED;
}
