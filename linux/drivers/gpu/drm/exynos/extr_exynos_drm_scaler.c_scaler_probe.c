
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scaler_data {int num_clk; int * clk_name; } ;
struct scaler_context {int * clock; struct scaler_data* scaler_data; int regs; struct device* dev; } ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SCALER_AUTOSUSPEND_DELAY ;
 int component_add (struct device*,int *) ;
 int dev_err (struct device*,char*) ;
 int devm_clk_get (struct device*,int ) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct scaler_context* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_threaded_irq (struct device*,int,int *,int ,int ,char*,struct scaler_context*) ;
 scalar_t__ of_device_get_match_data (struct device*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct scaler_context*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_dont_use_autosuspend (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_set_autosuspend_delay (struct device*,int ) ;
 int pm_runtime_use_autosuspend (struct device*) ;
 int scaler_component_ops ;
 int scaler_irq_handler ;

__attribute__((used)) static int scaler_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct resource *regs_res;
 struct scaler_context *scaler;
 int irq;
 int ret, i;

 scaler = devm_kzalloc(dev, sizeof(*scaler), GFP_KERNEL);
 if (!scaler)
  return -ENOMEM;

 scaler->scaler_data =
  (struct scaler_data *)of_device_get_match_data(dev);

 scaler->dev = dev;
 regs_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 scaler->regs = devm_ioremap_resource(dev, regs_res);
 if (IS_ERR(scaler->regs))
  return PTR_ERR(scaler->regs);

 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  dev_err(dev, "failed to get irq\n");
  return irq;
 }

 ret = devm_request_threaded_irq(dev, irq, ((void*)0), scaler_irq_handler,
     IRQF_ONESHOT, "drm_scaler", scaler);
 if (ret < 0) {
  dev_err(dev, "failed to request irq\n");
  return ret;
 }

 for (i = 0; i < scaler->scaler_data->num_clk; ++i) {
  scaler->clock[i] = devm_clk_get(dev,
           scaler->scaler_data->clk_name[i]);
  if (IS_ERR(scaler->clock[i])) {
   dev_err(dev, "failed to get clock\n");
   return PTR_ERR(scaler->clock[i]);
  }
 }

 pm_runtime_use_autosuspend(dev);
 pm_runtime_set_autosuspend_delay(dev, SCALER_AUTOSUSPEND_DELAY);
 pm_runtime_enable(dev);
 platform_set_drvdata(pdev, scaler);

 ret = component_add(dev, &scaler_component_ops);
 if (ret)
  goto err_ippdrv_register;

 return 0;

err_ippdrv_register:
 pm_runtime_dont_use_autosuspend(dev);
 pm_runtime_disable(dev);
 return ret;
}
