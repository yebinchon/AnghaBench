
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
struct cc_req_mgr_handle {scalar_t__ axi_completed; } ;
struct cc_drvdata {int irq; int comp_mask; struct cc_req_mgr_handle* request_mgr_handle; } ;


 int CC_REG (int ) ;
 int HOST_ICR ;
 int HOST_IMR ;
 int HOST_IRR ;
 scalar_t__ cc_axi_comp_count (struct cc_drvdata*) ;
 int cc_ioread (struct cc_drvdata*,int ) ;
 int cc_iowrite (struct cc_drvdata*,int ,int) ;
 int cc_proc_backlog (struct cc_drvdata*) ;
 int dev_dbg (struct device*,char*,...) ;
 struct device* drvdata_to_dev (struct cc_drvdata*) ;
 int proc_completions (struct cc_drvdata*) ;

__attribute__((used)) static void comp_handler(unsigned long devarg)
{
 struct cc_drvdata *drvdata = (struct cc_drvdata *)devarg;
 struct cc_req_mgr_handle *request_mgr_handle =
      drvdata->request_mgr_handle;
 struct device *dev = drvdata_to_dev(drvdata);
 u32 irq;

 dev_dbg(dev, "Completion handler called!\n");
 irq = (drvdata->irq & drvdata->comp_mask);




 cc_iowrite(drvdata, CC_REG(HOST_ICR), irq);



 request_mgr_handle->axi_completed += cc_axi_comp_count(drvdata);

 dev_dbg(dev, "AXI completion after updated: %d\n",
  request_mgr_handle->axi_completed);

 while (request_mgr_handle->axi_completed) {
  do {
   drvdata->irq |= cc_ioread(drvdata, CC_REG(HOST_IRR));
   irq = (drvdata->irq & drvdata->comp_mask);
   proc_completions(drvdata);




   request_mgr_handle->axi_completed +=
      cc_axi_comp_count(drvdata);
  } while (request_mgr_handle->axi_completed > 0);

  cc_iowrite(drvdata, CC_REG(HOST_ICR), irq);

  request_mgr_handle->axi_completed += cc_axi_comp_count(drvdata);
 }




 cc_iowrite(drvdata, CC_REG(HOST_IMR),
     cc_ioread(drvdata, CC_REG(HOST_IMR)) & ~drvdata->comp_mask);

 cc_proc_backlog(drvdata);
 dev_dbg(dev, "Comp. handler done.\n");
}
