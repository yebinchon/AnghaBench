
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cc_drvdata {int dummy; } ;


 int CC_REG (int ) ;
 int EBUSY ;
 int HOST_POWER_DOWN_EN ;
 int POWER_DOWN_DISABLE ;
 int cc_clk_on (struct cc_drvdata*) ;
 int cc_init_hash_sram (struct cc_drvdata*) ;
 int cc_iowrite (struct cc_drvdata*,int ,int ) ;
 int cc_resume_req_queue (struct cc_drvdata*) ;
 int cc_tee_handle_fips_error (struct cc_drvdata*) ;
 int cc_wait_for_reset_completion (struct cc_drvdata*) ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*,...) ;
 struct cc_drvdata* dev_get_drvdata (struct device*) ;
 int init_cc_regs (struct cc_drvdata*,int) ;

int cc_pm_resume(struct device *dev)
{
 int rc;
 struct cc_drvdata *drvdata = dev_get_drvdata(dev);

 dev_dbg(dev, "unset HOST_POWER_DOWN_EN\n");

 rc = cc_clk_on(drvdata);
 if (rc) {
  dev_err(dev, "failed getting clock back on. We're toast.\n");
  return rc;
 }

 if (!cc_wait_for_reset_completion(drvdata)) {
  dev_err(dev, "Cryptocell reset not completed");
  return -EBUSY;
 }

 cc_iowrite(drvdata, CC_REG(HOST_POWER_DOWN_EN), POWER_DOWN_DISABLE);
 rc = init_cc_regs(drvdata, 0);
 if (rc) {
  dev_err(dev, "init_cc_regs (%x)\n", rc);
  return rc;
 }

 cc_tee_handle_fips_error(drvdata);

 rc = cc_resume_req_queue(drvdata);
 if (rc) {
  dev_err(dev, "cc_resume_req_queue (%x)\n", rc);
  return rc;
 }


 cc_init_hash_sram(drvdata);

 return 0;
}
