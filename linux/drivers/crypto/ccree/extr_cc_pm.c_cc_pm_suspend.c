
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cc_drvdata {int dummy; } ;


 int CC_REG (int ) ;
 int HOST_POWER_DOWN_EN ;
 int POWER_DOWN_ENABLE ;
 int cc_clk_off (struct cc_drvdata*) ;
 int cc_iowrite (struct cc_drvdata*,int ,int ) ;
 int cc_suspend_req_queue (struct cc_drvdata*) ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*,int) ;
 struct cc_drvdata* dev_get_drvdata (struct device*) ;
 int fini_cc_regs (struct cc_drvdata*) ;

int cc_pm_suspend(struct device *dev)
{
 struct cc_drvdata *drvdata = dev_get_drvdata(dev);
 int rc;

 dev_dbg(dev, "set HOST_POWER_DOWN_EN\n");
 rc = cc_suspend_req_queue(drvdata);
 if (rc) {
  dev_err(dev, "cc_suspend_req_queue (%x)\n", rc);
  return rc;
 }
 fini_cc_regs(drvdata);
 cc_iowrite(drvdata, CC_REG(HOST_POWER_DOWN_EN), POWER_DOWN_ENABLE);
 cc_clk_off(drvdata);
 return 0;
}
