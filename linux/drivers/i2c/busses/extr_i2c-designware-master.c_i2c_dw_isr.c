
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_i2c_dev {int dev; } ;
typedef int irqreturn_t ;


 int DW_IC_ENABLE ;
 int DW_IC_INTR_ACTIVITY ;
 int DW_IC_RAW_INTR_STAT ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int dev_dbg (int ,char*,int,int) ;
 int dw_readl (struct dw_i2c_dev*,int ) ;
 int i2c_dw_irq_handler_master (struct dw_i2c_dev*) ;

__attribute__((used)) static irqreturn_t i2c_dw_isr(int this_irq, void *dev_id)
{
 struct dw_i2c_dev *dev = dev_id;
 u32 stat, enabled;

 enabled = dw_readl(dev, DW_IC_ENABLE);
 stat = dw_readl(dev, DW_IC_RAW_INTR_STAT);
 dev_dbg(dev->dev, "enabled=%#x stat=%#x\n", enabled, stat);
 if (!enabled || !(stat & ~DW_IC_INTR_ACTIVITY))
  return IRQ_NONE;

 i2c_dw_irq_handler_master(dev);

 return IRQ_HANDLED;
}
