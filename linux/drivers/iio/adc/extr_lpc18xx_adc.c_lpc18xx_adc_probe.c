
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct lpc18xx_adc {unsigned int cr_reg; scalar_t__ vref; scalar_t__ clk; scalar_t__ base; int lock; int * dev; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int num_channels; int channels; int modes; int * info; TYPE_1__ dev; int name; } ;


 int ARRAY_SIZE (int ) ;
 unsigned int DIV_ROUND_UP (unsigned long,int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int LPC18XX_ADC_CLK_TARGET ;
 scalar_t__ LPC18XX_ADC_CR ;
 unsigned int LPC18XX_ADC_CR_CLKDIV_SHIFT ;
 unsigned int LPC18XX_ADC_CR_PDN ;
 int PTR_ERR (scalar_t__) ;
 int clk_disable_unprepare (scalar_t__) ;
 unsigned long clk_get_rate (scalar_t__) ;
 int clk_prepare_enable (scalar_t__) ;
 int dev_err (int *,char*) ;
 int dev_name (int *) ;
 scalar_t__ devm_clk_get (int *,int *) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 scalar_t__ devm_ioremap_resource (int *,struct resource*) ;
 scalar_t__ devm_regulator_get (int *,char*) ;
 int iio_device_register (struct iio_dev*) ;
 struct lpc18xx_adc* iio_priv (struct iio_dev*) ;
 int lpc18xx_adc_iio_channels ;
 int lpc18xx_adc_info ;
 int mutex_init (int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct iio_dev*) ;
 int regulator_disable (scalar_t__) ;
 int regulator_enable (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int lpc18xx_adc_probe(struct platform_device *pdev)
{
 struct iio_dev *indio_dev;
 struct lpc18xx_adc *adc;
 struct resource *res;
 unsigned int clkdiv;
 unsigned long rate;
 int ret;

 indio_dev = devm_iio_device_alloc(&pdev->dev, sizeof(*adc));
 if (!indio_dev)
  return -ENOMEM;

 platform_set_drvdata(pdev, indio_dev);
 adc = iio_priv(indio_dev);
 adc->dev = &pdev->dev;
 mutex_init(&adc->lock);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 adc->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(adc->base))
  return PTR_ERR(adc->base);

 adc->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(adc->clk)) {
  dev_err(&pdev->dev, "error getting clock\n");
  return PTR_ERR(adc->clk);
 }

 rate = clk_get_rate(adc->clk);
 clkdiv = DIV_ROUND_UP(rate, LPC18XX_ADC_CLK_TARGET);

 adc->vref = devm_regulator_get(&pdev->dev, "vref");
 if (IS_ERR(adc->vref)) {
  dev_err(&pdev->dev, "error getting regulator\n");
  return PTR_ERR(adc->vref);
 }

 indio_dev->name = dev_name(&pdev->dev);
 indio_dev->dev.parent = &pdev->dev;
 indio_dev->info = &lpc18xx_adc_info;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = lpc18xx_adc_iio_channels;
 indio_dev->num_channels = ARRAY_SIZE(lpc18xx_adc_iio_channels);

 ret = regulator_enable(adc->vref);
 if (ret) {
  dev_err(&pdev->dev, "unable to enable regulator\n");
  return ret;
 }

 ret = clk_prepare_enable(adc->clk);
 if (ret) {
  dev_err(&pdev->dev, "unable to enable clock\n");
  goto dis_reg;
 }

 adc->cr_reg = (clkdiv << LPC18XX_ADC_CR_CLKDIV_SHIFT) |
   LPC18XX_ADC_CR_PDN;
 writel(adc->cr_reg, adc->base + LPC18XX_ADC_CR);

 ret = iio_device_register(indio_dev);
 if (ret) {
  dev_err(&pdev->dev, "unable to register device\n");
  goto dis_clk;
 }

 return 0;

dis_clk:
 writel(0, adc->base + LPC18XX_ADC_CR);
 clk_disable_unprepare(adc->clk);
dis_reg:
 regulator_disable(adc->vref);
 return ret;
}
