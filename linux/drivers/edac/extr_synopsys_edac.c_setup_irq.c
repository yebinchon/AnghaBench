
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct synps_edac_priv {int dummy; } ;
struct platform_device {int dev; } ;
struct mem_ctl_info {struct synps_edac_priv* pvt_info; } ;


 int EDAC_MC ;
 int KERN_ERR ;
 int dev_name (int *) ;
 int devm_request_irq (int *,int,int ,int ,int ,struct mem_ctl_info*) ;
 int edac_printk (int ,int ,char*,...) ;
 int enable_intr (struct synps_edac_priv*) ;
 int intr_handler ;
 int platform_get_irq (struct platform_device*,int ) ;

__attribute__((used)) static int setup_irq(struct mem_ctl_info *mci,
       struct platform_device *pdev)
{
 struct synps_edac_priv *priv = mci->pvt_info;
 int ret, irq;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  edac_printk(KERN_ERR, EDAC_MC,
       "No IRQ %d in DT\n", irq);
  return irq;
 }

 ret = devm_request_irq(&pdev->dev, irq, intr_handler,
          0, dev_name(&pdev->dev), mci);
 if (ret < 0) {
  edac_printk(KERN_ERR, EDAC_MC, "Failed to request IRQ\n");
  return ret;
 }

 enable_intr(priv);

 return 0;
}
