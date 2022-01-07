
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rot_variant {int num_formats; int formats; } ;
struct rot_context {int clock; int regs; struct device* dev; int num_formats; int formats; } ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int ROTATOR_AUTOSUSPEND_DELAY ;
 int component_add (struct device*,int *) ;
 int dev_err (struct device*,char*) ;
 int dev_name (struct device*) ;
 int devm_clk_get (struct device*,char*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct rot_context* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int,int ,int ,int ,struct rot_context*) ;
 struct rot_variant* of_device_get_match_data (struct device*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct rot_context*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_dont_use_autosuspend (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_set_autosuspend_delay (struct device*,int ) ;
 int pm_runtime_use_autosuspend (struct device*) ;
 int rotator_component_ops ;
 int rotator_irq_handler ;

__attribute__((used)) static int rotator_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct resource *regs_res;
 struct rot_context *rot;
 const struct rot_variant *variant;
 int irq;
 int ret;

 rot = devm_kzalloc(dev, sizeof(*rot), GFP_KERNEL);
 if (!rot)
  return -ENOMEM;

 variant = of_device_get_match_data(dev);
 rot->formats = variant->formats;
 rot->num_formats = variant->num_formats;
 rot->dev = dev;
 regs_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 rot->regs = devm_ioremap_resource(dev, regs_res);
 if (IS_ERR(rot->regs))
  return PTR_ERR(rot->regs);

 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  dev_err(dev, "failed to get irq\n");
  return irq;
 }

 ret = devm_request_irq(dev, irq, rotator_irq_handler, 0, dev_name(dev),
          rot);
 if (ret < 0) {
  dev_err(dev, "failed to request irq\n");
  return ret;
 }

 rot->clock = devm_clk_get(dev, "rotator");
 if (IS_ERR(rot->clock)) {
  dev_err(dev, "failed to get clock\n");
  return PTR_ERR(rot->clock);
 }

 pm_runtime_use_autosuspend(dev);
 pm_runtime_set_autosuspend_delay(dev, ROTATOR_AUTOSUSPEND_DELAY);
 pm_runtime_enable(dev);
 platform_set_drvdata(pdev, rot);

 ret = component_add(dev, &rotator_component_ops);
 if (ret)
  goto err_component;

 return 0;

err_component:
 pm_runtime_dont_use_autosuspend(dev);
 pm_runtime_disable(dev);
 return ret;
}
