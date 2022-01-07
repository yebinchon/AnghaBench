
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct imx7d_adc {int completion; int vref; int clk; int regs; struct device* dev; } ;
struct TYPE_3__ {struct device* parent; } ;
struct iio_dev {TYPE_1__ dev; int num_channels; int channels; int modes; int * info; int name; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int __imx7d_adc_disable ;
 int dev_err (struct device*,char*,...) ;
 int dev_name (struct device*) ;
 int devm_add_action_or_reset (struct device*,int ,TYPE_1__*) ;
 int devm_clk_get (struct device*,char*) ;
 struct iio_dev* devm_iio_device_alloc (struct device*,int) ;
 int devm_iio_device_register (struct device*,struct iio_dev*) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_regulator_get (struct device*,char*) ;
 int devm_request_irq (struct device*,int,int ,int ,int ,struct imx7d_adc*) ;
 struct imx7d_adc* iio_priv (struct iio_dev*) ;
 int imx7d_adc_enable (TYPE_1__*) ;
 int imx7d_adc_feature_config (struct imx7d_adc*) ;
 int imx7d_adc_iio_channels ;
 int imx7d_adc_iio_info ;
 int imx7d_adc_isr ;
 int init_completion (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct iio_dev*) ;

__attribute__((used)) static int imx7d_adc_probe(struct platform_device *pdev)
{
 struct imx7d_adc *info;
 struct iio_dev *indio_dev;
 struct device *dev = &pdev->dev;
 int irq;
 int ret;

 indio_dev = devm_iio_device_alloc(dev, sizeof(*info));
 if (!indio_dev) {
  dev_err(&pdev->dev, "Failed allocating iio device\n");
  return -ENOMEM;
 }

 info = iio_priv(indio_dev);
 info->dev = dev;

 info->regs = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(info->regs))
  return PTR_ERR(info->regs);

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 info->clk = devm_clk_get(dev, "adc");
 if (IS_ERR(info->clk)) {
  ret = PTR_ERR(info->clk);
  dev_err(dev, "Failed getting clock, err = %d\n", ret);
  return ret;
 }

 info->vref = devm_regulator_get(dev, "vref");
 if (IS_ERR(info->vref)) {
  ret = PTR_ERR(info->vref);
  dev_err(dev,
   "Failed getting reference voltage, err = %d\n", ret);
  return ret;
 }

 platform_set_drvdata(pdev, indio_dev);

 init_completion(&info->completion);

 indio_dev->name = dev_name(dev);
 indio_dev->dev.parent = dev;
 indio_dev->info = &imx7d_adc_iio_info;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = imx7d_adc_iio_channels;
 indio_dev->num_channels = ARRAY_SIZE(imx7d_adc_iio_channels);

 ret = devm_request_irq(dev, irq, imx7d_adc_isr, 0, dev_name(dev), info);
 if (ret < 0) {
  dev_err(dev, "Failed requesting irq, irq = %d\n", irq);
  return ret;
 }

 imx7d_adc_feature_config(info);

 ret = imx7d_adc_enable(&indio_dev->dev);
 if (ret)
  return ret;

 ret = devm_add_action_or_reset(dev, __imx7d_adc_disable,
           &indio_dev->dev);
 if (ret)
  return ret;

 ret = devm_iio_device_register(dev, indio_dev);
 if (ret) {
  dev_err(&pdev->dev, "Couldn't register the device.\n");
  return ret;
 }

 return 0;
}
