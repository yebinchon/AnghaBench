
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct lpc18xx_dac {scalar_t__ vref; scalar_t__ clk; scalar_t__ base; int lock; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int num_channels; int channels; int modes; int * info; TYPE_1__ dev; int name; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (scalar_t__) ;
 scalar_t__ LPC18XX_DAC_CR ;
 scalar_t__ LPC18XX_DAC_CTRL ;
 int PTR_ERR (scalar_t__) ;
 int clk_disable_unprepare (scalar_t__) ;
 int clk_prepare_enable (scalar_t__) ;
 int dev_err (int *,char*) ;
 int dev_name (int *) ;
 scalar_t__ devm_clk_get (int *,int *) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 scalar_t__ devm_ioremap_resource (int *,struct resource*) ;
 scalar_t__ devm_regulator_get (int *,char*) ;
 int iio_device_register (struct iio_dev*) ;
 struct lpc18xx_dac* iio_priv (struct iio_dev*) ;
 int lpc18xx_dac_iio_channels ;
 int lpc18xx_dac_info ;
 int mutex_init (int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct iio_dev*) ;
 int regulator_disable (scalar_t__) ;
 int regulator_enable (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int lpc18xx_dac_probe(struct platform_device *pdev)
{
 struct iio_dev *indio_dev;
 struct lpc18xx_dac *dac;
 struct resource *res;
 int ret;

 indio_dev = devm_iio_device_alloc(&pdev->dev, sizeof(*dac));
 if (!indio_dev)
  return -ENOMEM;

 platform_set_drvdata(pdev, indio_dev);
 dac = iio_priv(indio_dev);
 mutex_init(&dac->lock);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 dac->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(dac->base))
  return PTR_ERR(dac->base);

 dac->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(dac->clk)) {
  dev_err(&pdev->dev, "error getting clock\n");
  return PTR_ERR(dac->clk);
 }

 dac->vref = devm_regulator_get(&pdev->dev, "vref");
 if (IS_ERR(dac->vref)) {
  dev_err(&pdev->dev, "error getting regulator\n");
  return PTR_ERR(dac->vref);
 }

 indio_dev->name = dev_name(&pdev->dev);
 indio_dev->dev.parent = &pdev->dev;
 indio_dev->info = &lpc18xx_dac_info;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = lpc18xx_dac_iio_channels;
 indio_dev->num_channels = ARRAY_SIZE(lpc18xx_dac_iio_channels);

 ret = regulator_enable(dac->vref);
 if (ret) {
  dev_err(&pdev->dev, "unable to enable regulator\n");
  return ret;
 }

 ret = clk_prepare_enable(dac->clk);
 if (ret) {
  dev_err(&pdev->dev, "unable to enable clock\n");
  goto dis_reg;
 }

 writel(0, dac->base + LPC18XX_DAC_CTRL);
 writel(0, dac->base + LPC18XX_DAC_CR);

 ret = iio_device_register(indio_dev);
 if (ret) {
  dev_err(&pdev->dev, "unable to register device\n");
  goto dis_clk;
 }

 return 0;

dis_clk:
 clk_disable_unprepare(dac->clk);
dis_reg:
 regulator_disable(dac->vref);
 return ret;
}
