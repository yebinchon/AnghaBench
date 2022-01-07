
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct etnaviv_gpu {scalar_t__ irq; struct device* dev; int * clk_shader; void* base_rate_shader; int * clk_core; void* base_rate_core; int * clk_bus; int * clk_reg; int * mmio; int fence_lock; int lock; } ;


 int DBG (char*,int *) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 void* clk_get_rate (int *) ;
 int component_add (struct device*,int *) ;
 int dev_err (struct device*,char*,int,...) ;
 int dev_name (struct device*) ;
 int dev_set_drvdata (struct device*,struct etnaviv_gpu*) ;
 void* devm_clk_get (struct device*,char*) ;
 struct etnaviv_gpu* devm_kzalloc (struct device*,int,int ) ;
 int * devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_request_irq (struct device*,int,int ,int ,int ,struct etnaviv_gpu*) ;
 int gpu_ops ;
 int irq_handler ;
 int mutex_init (int *) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_set_autosuspend_delay (struct device*,int) ;
 int pm_runtime_use_autosuspend (struct device*) ;

__attribute__((used)) static int etnaviv_gpu_platform_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct etnaviv_gpu *gpu;
 int err;

 gpu = devm_kzalloc(dev, sizeof(*gpu), GFP_KERNEL);
 if (!gpu)
  return -ENOMEM;

 gpu->dev = &pdev->dev;
 mutex_init(&gpu->lock);
 mutex_init(&gpu->fence_lock);


 gpu->mmio = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(gpu->mmio))
  return PTR_ERR(gpu->mmio);


 gpu->irq = platform_get_irq(pdev, 0);
 if (gpu->irq < 0) {
  dev_err(dev, "failed to get irq: %d\n", gpu->irq);
  return gpu->irq;
 }

 err = devm_request_irq(&pdev->dev, gpu->irq, irq_handler, 0,
          dev_name(gpu->dev), gpu);
 if (err) {
  dev_err(dev, "failed to request IRQ%u: %d\n", gpu->irq, err);
  return err;
 }


 gpu->clk_reg = devm_clk_get(&pdev->dev, "reg");
 DBG("clk_reg: %p", gpu->clk_reg);
 if (IS_ERR(gpu->clk_reg))
  gpu->clk_reg = ((void*)0);

 gpu->clk_bus = devm_clk_get(&pdev->dev, "bus");
 DBG("clk_bus: %p", gpu->clk_bus);
 if (IS_ERR(gpu->clk_bus))
  gpu->clk_bus = ((void*)0);

 gpu->clk_core = devm_clk_get(&pdev->dev, "core");
 DBG("clk_core: %p", gpu->clk_core);
 if (IS_ERR(gpu->clk_core))
  gpu->clk_core = ((void*)0);
 gpu->base_rate_core = clk_get_rate(gpu->clk_core);

 gpu->clk_shader = devm_clk_get(&pdev->dev, "shader");
 DBG("clk_shader: %p", gpu->clk_shader);
 if (IS_ERR(gpu->clk_shader))
  gpu->clk_shader = ((void*)0);
 gpu->base_rate_shader = clk_get_rate(gpu->clk_shader);


 dev_set_drvdata(dev, gpu);






 pm_runtime_use_autosuspend(gpu->dev);
 pm_runtime_set_autosuspend_delay(gpu->dev, 200);
 pm_runtime_enable(gpu->dev);

 err = component_add(&pdev->dev, &gpu_ops);
 if (err < 0) {
  dev_err(&pdev->dev, "failed to register component: %d\n", err);
  return err;
 }

 return 0;
}
