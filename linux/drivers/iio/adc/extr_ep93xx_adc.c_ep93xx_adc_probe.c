
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int channels; int num_channels; int * info; int modes; int name; TYPE_1__ dev; } ;
struct ep93xx_adc_priv {int lastch; int clk; int lock; int base; } ;
struct clk {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 struct clk* clk_get_parent (int ) ;
 int clk_get_rate (struct clk*) ;
 int clk_set_rate (int ,int) ;
 int dev_err (int *,char*) ;
 int dev_name (int *) ;
 int dev_warn (int *,char*) ;
 int devm_clk_get (int *,int *) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 int ep93xx_adc_channels ;
 int ep93xx_adc_info ;
 int iio_device_register (struct iio_dev*) ;
 struct ep93xx_adc_priv* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct iio_dev*) ;

__attribute__((used)) static int ep93xx_adc_probe(struct platform_device *pdev)
{
 int ret;
 struct iio_dev *iiodev;
 struct ep93xx_adc_priv *priv;
 struct clk *pclk;
 struct resource *res;

 iiodev = devm_iio_device_alloc(&pdev->dev, sizeof(*priv));
 if (!iiodev)
  return -ENOMEM;
 priv = iio_priv(iiodev);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 priv->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(priv->base)) {
  dev_err(&pdev->dev, "Cannot map memory resource\n");
  return PTR_ERR(priv->base);
 }

 iiodev->dev.parent = &pdev->dev;
 iiodev->name = dev_name(&pdev->dev);
 iiodev->modes = INDIO_DIRECT_MODE;
 iiodev->info = &ep93xx_adc_info;
 iiodev->num_channels = ARRAY_SIZE(ep93xx_adc_channels);
 iiodev->channels = ep93xx_adc_channels;

 priv->lastch = -1;
 mutex_init(&priv->lock);

 platform_set_drvdata(pdev, iiodev);

 priv->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(priv->clk)) {
  dev_err(&pdev->dev, "Cannot obtain clock\n");
  return PTR_ERR(priv->clk);
 }

 pclk = clk_get_parent(priv->clk);
 if (!pclk) {
  dev_warn(&pdev->dev, "Cannot obtain parent clock\n");
 } else {







  ret = clk_set_rate(priv->clk, clk_get_rate(pclk) / 16);
  if (ret)
   dev_warn(&pdev->dev, "Cannot set clock rate\n");




 }

 ret = clk_enable(priv->clk);
 if (ret) {
  dev_err(&pdev->dev, "Cannot enable clock\n");
  return ret;
 }

 ret = iio_device_register(iiodev);
 if (ret)
  clk_disable(priv->clk);

 return ret;
}
