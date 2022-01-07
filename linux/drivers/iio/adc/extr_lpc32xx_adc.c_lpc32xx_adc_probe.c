
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; } ;
struct platform_device {int dev; } ;
struct lpc32xx_adc_state {int completion; int vref; int clk; int adc_base; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int num_channels; int modes; int * info; TYPE_1__ dev; int name; int channels; } ;


 int ARRAY_SIZE (int ) ;
 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int INDIO_DIRECT_MODE ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int LPC32XXAD_NAME ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,...) ;
 int devm_clk_get (int *,int *) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 int devm_ioremap (int *,int ,int ) ;
 int devm_regulator_get (int *,char*) ;
 int devm_request_irq (int *,int,int ,int ,int ,struct lpc32xx_adc_state*) ;
 struct lpc32xx_adc_state* iio_priv (struct iio_dev*) ;
 int init_completion (int *) ;
 int lpc32xx_adc_iio_channels ;
 int lpc32xx_adc_iio_info ;
 int lpc32xx_adc_iio_scale_channels ;
 int lpc32xx_adc_isr ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct iio_dev*) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int lpc32xx_adc_probe(struct platform_device *pdev)
{
 struct lpc32xx_adc_state *st = ((void*)0);
 struct resource *res;
 int retval = -ENODEV;
 struct iio_dev *iodev = ((void*)0);
 int irq;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(&pdev->dev, "failed to get platform I/O memory\n");
  return -ENXIO;
 }

 iodev = devm_iio_device_alloc(&pdev->dev, sizeof(*st));
 if (!iodev)
  return -ENOMEM;

 st = iio_priv(iodev);

 st->adc_base = devm_ioremap(&pdev->dev, res->start,
        resource_size(res));
 if (!st->adc_base) {
  dev_err(&pdev->dev, "failed mapping memory\n");
  return -EBUSY;
 }

 st->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(st->clk)) {
  dev_err(&pdev->dev, "failed getting clock\n");
  return PTR_ERR(st->clk);
 }

 irq = platform_get_irq(pdev, 0);
 if (irq <= 0)
  return -ENXIO;

 retval = devm_request_irq(&pdev->dev, irq, lpc32xx_adc_isr, 0,
      LPC32XXAD_NAME, st);
 if (retval < 0) {
  dev_err(&pdev->dev, "failed requesting interrupt\n");
  return retval;
 }

 st->vref = devm_regulator_get(&pdev->dev, "vref");
 if (IS_ERR(st->vref)) {
  iodev->channels = lpc32xx_adc_iio_channels;
  dev_info(&pdev->dev,
    "Missing vref regulator: No scaling available\n");
 } else {
  iodev->channels = lpc32xx_adc_iio_scale_channels;
 }

 platform_set_drvdata(pdev, iodev);

 init_completion(&st->completion);

 iodev->name = LPC32XXAD_NAME;
 iodev->dev.parent = &pdev->dev;
 iodev->info = &lpc32xx_adc_iio_info;
 iodev->modes = INDIO_DIRECT_MODE;
 iodev->num_channels = ARRAY_SIZE(lpc32xx_adc_iio_channels);

 retval = devm_iio_device_register(&pdev->dev, iodev);
 if (retval)
  return retval;

 dev_info(&pdev->dev, "LPC32XX ADC driver loaded, IRQ %d\n", irq);

 return 0;
}
