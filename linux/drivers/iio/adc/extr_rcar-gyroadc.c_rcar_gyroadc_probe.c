
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct rcar_gyroadc {int model; int clk; int regs; struct device* dev; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int of_node; struct device* parent; } ;
struct iio_dev {int modes; int * info; TYPE_1__ dev; int name; } ;
typedef enum rcar_gyroadc_model { ____Placeholder_rcar_gyroadc_model } rcar_gyroadc_model ;


 int DRIVER_NAME ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int INDIO_DIRECT_MODE ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int RCAR_GYROADC_RUNTIME_PM_DELAY_MS ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*,...) ;
 int devm_clk_get (struct device*,char*) ;
 struct iio_dev* devm_iio_device_alloc (struct device*,int) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 int iio_device_register (struct iio_dev*) ;
 struct rcar_gyroadc* iio_priv (struct iio_dev*) ;
 scalar_t__ of_device_get_match_data (struct device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct iio_dev*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 int pm_runtime_set_autosuspend_delay (struct device*,int ) ;
 int pm_runtime_set_suspended (struct device*) ;
 int pm_runtime_use_autosuspend (struct device*) ;
 int rcar_gyroadc_deinit_supplies (struct iio_dev*) ;
 int rcar_gyroadc_hw_init (struct rcar_gyroadc*) ;
 int rcar_gyroadc_hw_start (struct rcar_gyroadc*) ;
 int rcar_gyroadc_hw_stop (struct rcar_gyroadc*) ;
 int rcar_gyroadc_iio_info ;
 int rcar_gyroadc_init_supplies (struct iio_dev*) ;
 int rcar_gyroadc_parse_subdevs (struct iio_dev*) ;

__attribute__((used)) static int rcar_gyroadc_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct rcar_gyroadc *priv;
 struct iio_dev *indio_dev;
 struct resource *mem;
 int ret;

 indio_dev = devm_iio_device_alloc(dev, sizeof(*priv));
 if (!indio_dev)
  return -ENOMEM;

 priv = iio_priv(indio_dev);
 priv->dev = dev;

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 priv->regs = devm_ioremap_resource(dev, mem);
 if (IS_ERR(priv->regs))
  return PTR_ERR(priv->regs);

 priv->clk = devm_clk_get(dev, "fck");
 if (IS_ERR(priv->clk)) {
  ret = PTR_ERR(priv->clk);
  if (ret != -EPROBE_DEFER)
   dev_err(dev, "Failed to get IF clock (ret=%i)\n", ret);
  return ret;
 }

 ret = rcar_gyroadc_parse_subdevs(indio_dev);
 if (ret)
  return ret;

 ret = rcar_gyroadc_init_supplies(indio_dev);
 if (ret)
  return ret;

 priv->model = (enum rcar_gyroadc_model)
  of_device_get_match_data(&pdev->dev);

 platform_set_drvdata(pdev, indio_dev);

 indio_dev->name = DRIVER_NAME;
 indio_dev->dev.parent = dev;
 indio_dev->dev.of_node = pdev->dev.of_node;
 indio_dev->info = &rcar_gyroadc_iio_info;
 indio_dev->modes = INDIO_DIRECT_MODE;

 ret = clk_prepare_enable(priv->clk);
 if (ret) {
  dev_err(dev, "Could not prepare or enable the IF clock.\n");
  goto err_clk_if_enable;
 }

 pm_runtime_set_autosuspend_delay(dev, RCAR_GYROADC_RUNTIME_PM_DELAY_MS);
 pm_runtime_use_autosuspend(dev);
 pm_runtime_enable(dev);

 pm_runtime_get_sync(dev);
 rcar_gyroadc_hw_init(priv);
 rcar_gyroadc_hw_start(priv);

 ret = iio_device_register(indio_dev);
 if (ret) {
  dev_err(dev, "Couldn't register IIO device.\n");
  goto err_iio_device_register;
 }

 pm_runtime_put_sync(dev);

 return 0;

err_iio_device_register:
 rcar_gyroadc_hw_stop(priv);
 pm_runtime_put_sync(dev);
 pm_runtime_disable(dev);
 pm_runtime_set_suspended(dev);
 clk_disable_unprepare(priv->clk);
err_clk_if_enable:
 rcar_gyroadc_deinit_supplies(indio_dev);

 return ret;
}
