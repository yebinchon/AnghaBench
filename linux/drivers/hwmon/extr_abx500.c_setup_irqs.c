
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int abx500_temp_irq_handler ;
 int dev_err (int *,char*,...) ;
 int devm_request_threaded_irq (int *,int,int *,int ,int ,char*,struct platform_device*) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;

__attribute__((used)) static int setup_irqs(struct platform_device *pdev)
{
 int ret;
 int irq = platform_get_irq_byname(pdev, "ABX500_TEMP_WARM");

 if (irq < 0) {
  dev_err(&pdev->dev, "Get irq by name failed\n");
  return irq;
 }

 ret = devm_request_threaded_irq(&pdev->dev, irq, ((void*)0),
  abx500_temp_irq_handler, 0, "abx500-temp", pdev);
 if (ret < 0)
  dev_err(&pdev->dev, "Request threaded irq failed (%d)\n", ret);

 return ret;
}
