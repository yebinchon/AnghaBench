
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
struct cc_drvdata {int irq; int comp_mask; } ;
typedef int irqreturn_t ;


 int AXIM_MON_ERR ;
 int CC_AXI_ERR_IRQ_MASK ;
 int CC_GPR0_IRQ_MASK ;
 int CC_REG (int ) ;
 int HOST_ICR ;
 int HOST_IMR ;
 int HOST_IRR ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int cc_ioread (struct cc_drvdata*,int ) ;
 int cc_iowrite (struct cc_drvdata*,int ,int) ;
 scalar_t__ cc_pm_is_dev_suspended (struct device*) ;
 int complete_request (struct cc_drvdata*) ;
 int dev_dbg (struct device*,char*,int) ;
 int dev_dbg_ratelimited (struct device*,char*,int) ;
 struct device* drvdata_to_dev (struct cc_drvdata*) ;
 int fips_handler (struct cc_drvdata*) ;

__attribute__((used)) static irqreturn_t cc_isr(int irq, void *dev_id)
{
 struct cc_drvdata *drvdata = (struct cc_drvdata *)dev_id;
 struct device *dev = drvdata_to_dev(drvdata);
 u32 irr;
 u32 imr;



 if (cc_pm_is_dev_suspended(dev))
  return IRQ_NONE;


 irr = cc_ioread(drvdata, CC_REG(HOST_IRR));
 dev_dbg(dev, "Got IRR=0x%08X\n", irr);

 if (irr == 0)
  return IRQ_NONE;

 imr = cc_ioread(drvdata, CC_REG(HOST_IMR));


 cc_iowrite(drvdata, CC_REG(HOST_ICR), irr);

 drvdata->irq = irr;

 if (irr & drvdata->comp_mask) {



  cc_iowrite(drvdata, CC_REG(HOST_IMR), imr | drvdata->comp_mask);
  irr &= ~drvdata->comp_mask;
  complete_request(drvdata);
 }
 if (irr & CC_AXI_ERR_IRQ_MASK) {
  u32 axi_err;


  axi_err = cc_ioread(drvdata, CC_REG(AXIM_MON_ERR));
  dev_dbg(dev, "AXI completion error: axim_mon_err=0x%08X\n",
   axi_err);

  irr &= ~CC_AXI_ERR_IRQ_MASK;
 }

 if (irr) {
  dev_dbg_ratelimited(dev, "IRR includes unknown cause bits (0x%08X)\n",
        irr);

 }

 return IRQ_HANDLED;
}
