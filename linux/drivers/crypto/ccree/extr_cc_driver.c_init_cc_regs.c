
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cc_drvdata {scalar_t__ hw_rev; unsigned int comp_mask; scalar_t__ coherent; } ;


 int AXIM_CACHE_PARAMS ;
 int AXIM_CFG ;
 unsigned int CC_AXI_ERR_IRQ_MASK ;
 unsigned int CC_AXI_IRQ_MASK ;
 int CC_COHERENT_CACHE_PARAMS ;
 unsigned int CC_GPR0_IRQ_MASK ;
 scalar_t__ CC_HW_REV_712 ;
 int CC_REG (int ) ;
 int HOST_ICR ;
 int HOST_IMR ;
 int HOST_IRR ;
 unsigned int cc_ioread (struct cc_drvdata*,int ) ;
 int cc_iowrite (struct cc_drvdata*,int ,unsigned int) ;
 int dev_dbg (struct device*,char*,unsigned int,...) ;
 struct device* drvdata_to_dev (struct cc_drvdata*) ;

int init_cc_regs(struct cc_drvdata *drvdata, bool is_probe)
{
 unsigned int val, cache_params;
 struct device *dev = drvdata_to_dev(drvdata);



 if (drvdata->hw_rev <= CC_HW_REV_712) {
  val = cc_ioread(drvdata, CC_REG(AXIM_CFG));
  cc_iowrite(drvdata, CC_REG(AXIM_CFG), val & ~CC_AXI_IRQ_MASK);
  dev_dbg(dev, "AXIM_CFG=0x%08X\n",
   cc_ioread(drvdata, CC_REG(AXIM_CFG)));
 }


 val = cc_ioread(drvdata, CC_REG(HOST_IRR));
 dev_dbg(dev, "IRR=0x%08X\n", val);
 cc_iowrite(drvdata, CC_REG(HOST_ICR), val);


 val = drvdata->comp_mask | CC_AXI_ERR_IRQ_MASK;

 if (drvdata->hw_rev >= CC_HW_REV_712)
  val |= CC_GPR0_IRQ_MASK;

 cc_iowrite(drvdata, CC_REG(HOST_IMR), ~val);

 cache_params = (drvdata->coherent ? CC_COHERENT_CACHE_PARAMS : 0x0);

 val = cc_ioread(drvdata, CC_REG(AXIM_CACHE_PARAMS));

 if (is_probe)
  dev_dbg(dev, "Cache params previous: 0x%08X\n", val);

 cc_iowrite(drvdata, CC_REG(AXIM_CACHE_PARAMS), cache_params);
 val = cc_ioread(drvdata, CC_REG(AXIM_CACHE_PARAMS));

 if (is_probe)
  dev_dbg(dev, "Cache params current: 0x%08X (expect: 0x%08X)\n",
   val, cache_params);

 return 0;
}
