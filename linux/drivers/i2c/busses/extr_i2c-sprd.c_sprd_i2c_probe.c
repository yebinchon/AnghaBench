
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int of_node; struct device* parent; } ;
struct TYPE_5__ {int retries; TYPE_1__ dev; int nr; struct sprd_i2c* algo_data; int * algo; int owner; int name; } ;
struct sprd_i2c {scalar_t__ irq; int bus_freq; int clk; struct device* dev; TYPE_2__ adap; int complete; int base; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; int name; int id; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_NO_SUSPEND ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SPRD_I2C_PM_TIMEOUT ;
 int THIS_MODULE ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*,...) ;
 struct sprd_i2c* devm_kzalloc (struct device*,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_request_threaded_irq (struct device*,int,int ,int ,int,int ,struct sprd_i2c*) ;
 int i2c_add_numbered_adapter (TYPE_2__*) ;
 int i2c_set_adapdata (TYPE_2__*,struct sprd_i2c*) ;
 int init_completion (int *) ;
 int of_alias_get_id (int ,char*) ;
 int of_property_read_u32 (int ,char*,int*) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct sprd_i2c*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_mark_last_busy (struct device*) ;
 int pm_runtime_put_autosuspend (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int pm_runtime_set_active (struct device*) ;
 int pm_runtime_set_autosuspend_delay (struct device*,int ) ;
 int pm_runtime_use_autosuspend (struct device*) ;
 int snprintf (int ,int,char*,char*) ;
 int sprd_i2c_algo ;
 int sprd_i2c_clk_init (struct sprd_i2c*) ;
 int sprd_i2c_enable (struct sprd_i2c*) ;
 int sprd_i2c_isr ;
 int sprd_i2c_isr_thread ;

__attribute__((used)) static int sprd_i2c_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct sprd_i2c *i2c_dev;
 u32 prop;
 int ret;

 pdev->id = of_alias_get_id(dev->of_node, "i2c");

 i2c_dev = devm_kzalloc(dev, sizeof(struct sprd_i2c), GFP_KERNEL);
 if (!i2c_dev)
  return -ENOMEM;

 i2c_dev->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(i2c_dev->base))
  return PTR_ERR(i2c_dev->base);

 i2c_dev->irq = platform_get_irq(pdev, 0);
 if (i2c_dev->irq < 0) {
  dev_err(&pdev->dev, "failed to get irq resource\n");
  return i2c_dev->irq;
 }

 i2c_set_adapdata(&i2c_dev->adap, i2c_dev);
 init_completion(&i2c_dev->complete);
 snprintf(i2c_dev->adap.name, sizeof(i2c_dev->adap.name),
   "%s", "sprd-i2c");

 i2c_dev->bus_freq = 100000;
 i2c_dev->adap.owner = THIS_MODULE;
 i2c_dev->dev = dev;
 i2c_dev->adap.retries = 3;
 i2c_dev->adap.algo = &sprd_i2c_algo;
 i2c_dev->adap.algo_data = i2c_dev;
 i2c_dev->adap.dev.parent = dev;
 i2c_dev->adap.nr = pdev->id;
 i2c_dev->adap.dev.of_node = dev->of_node;

 if (!of_property_read_u32(dev->of_node, "clock-frequency", &prop))
  i2c_dev->bus_freq = prop;


 if (i2c_dev->bus_freq != 100000 && i2c_dev->bus_freq != 400000)
  return -EINVAL;

 ret = sprd_i2c_clk_init(i2c_dev);
 if (ret)
  return ret;

 platform_set_drvdata(pdev, i2c_dev);

 ret = clk_prepare_enable(i2c_dev->clk);
 if (ret)
  return ret;

 sprd_i2c_enable(i2c_dev);

 pm_runtime_set_autosuspend_delay(i2c_dev->dev, SPRD_I2C_PM_TIMEOUT);
 pm_runtime_use_autosuspend(i2c_dev->dev);
 pm_runtime_set_active(i2c_dev->dev);
 pm_runtime_enable(i2c_dev->dev);

 ret = pm_runtime_get_sync(i2c_dev->dev);
 if (ret < 0)
  goto err_rpm_put;

 ret = devm_request_threaded_irq(dev, i2c_dev->irq,
  sprd_i2c_isr, sprd_i2c_isr_thread,
  IRQF_NO_SUSPEND | IRQF_ONESHOT,
  pdev->name, i2c_dev);
 if (ret) {
  dev_err(&pdev->dev, "failed to request irq %d\n", i2c_dev->irq);
  goto err_rpm_put;
 }

 ret = i2c_add_numbered_adapter(&i2c_dev->adap);
 if (ret) {
  dev_err(&pdev->dev, "add adapter failed\n");
  goto err_rpm_put;
 }

 pm_runtime_mark_last_busy(i2c_dev->dev);
 pm_runtime_put_autosuspend(i2c_dev->dev);
 return 0;

err_rpm_put:
 pm_runtime_put_noidle(i2c_dev->dev);
 pm_runtime_disable(i2c_dev->dev);
 clk_disable_unprepare(i2c_dev->clk);
 return ret;
}
