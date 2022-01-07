
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int ASPEED_MCR_INTR_CTRL ;
 int ASPEED_MCR_INTR_CTRL_ENABLE ;
 int DRV_NAME ;
 int ENODEV ;
 int IRQF_TRIGGER_HIGH ;
 int aspeed_regmap ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*,int) ;
 int devm_request_irq (int *,int,int ,int ,int ,void*) ;
 int mcr_isr ;
 int platform_get_irq (struct platform_device*,int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int config_irq(void *ctx, struct platform_device *pdev)
{
 int irq;
 int rc;


 irq = platform_get_irq(pdev, 0);
 dev_dbg(&pdev->dev, "got irq %d\n", irq);
 if (!irq)
  return -ENODEV;

 rc = devm_request_irq(&pdev->dev, irq, mcr_isr, IRQF_TRIGGER_HIGH,
         DRV_NAME, ctx);
 if (rc) {
  dev_err(&pdev->dev, "unable to request irq %d\n", irq);
  return rc;
 }


 regmap_update_bits(aspeed_regmap, ASPEED_MCR_INTR_CTRL,
      ASPEED_MCR_INTR_CTRL_ENABLE,
      ASPEED_MCR_INTR_CTRL_ENABLE);

 return 0;
}
