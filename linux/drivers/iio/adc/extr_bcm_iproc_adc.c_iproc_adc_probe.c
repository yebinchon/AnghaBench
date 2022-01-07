
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct iproc_adc_priv {scalar_t__ irqno; int adc_clk; int regmap; int completion; int mutex; } ;
struct TYPE_6__ {int of_node; TYPE_2__* parent; } ;
struct iio_dev {char* name; int num_channels; int channels; int modes; int * info; TYPE_1__ dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int IPROC_ADC_AUXIN_SCAN_ENA ;
 int IPROC_REGCTL2 ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (TYPE_2__*,char*,...) ;
 int devm_clk_get (TYPE_2__*,char*) ;
 struct iio_dev* devm_iio_device_alloc (TYPE_2__*,int) ;
 int devm_request_threaded_irq (TYPE_2__*,scalar_t__,int ,int ,int ,char*,struct iio_dev*) ;
 int iio_device_register (struct iio_dev*) ;
 struct iproc_adc_priv* iio_priv (struct iio_dev*) ;
 int init_completion (int *) ;
 int iproc_adc_disable (struct iio_dev*) ;
 int iproc_adc_enable (struct iio_dev*) ;
 int iproc_adc_iio_channels ;
 int iproc_adc_iio_info ;
 int iproc_adc_interrupt_handler ;
 int iproc_adc_interrupt_thread ;
 int mutex_init (int *) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct iio_dev*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int syscon_regmap_lookup_by_phandle (int ,char*) ;

__attribute__((used)) static int iproc_adc_probe(struct platform_device *pdev)
{
 struct iproc_adc_priv *adc_priv;
 struct iio_dev *indio_dev = ((void*)0);
 int ret;

 indio_dev = devm_iio_device_alloc(&pdev->dev,
     sizeof(*adc_priv));
 if (!indio_dev) {
  dev_err(&pdev->dev, "failed to allocate iio device\n");
  return -ENOMEM;
 }

 adc_priv = iio_priv(indio_dev);
 platform_set_drvdata(pdev, indio_dev);

 mutex_init(&adc_priv->mutex);

 init_completion(&adc_priv->completion);

 adc_priv->regmap = syscon_regmap_lookup_by_phandle(pdev->dev.of_node,
      "adc-syscon");
 if (IS_ERR(adc_priv->regmap)) {
  dev_err(&pdev->dev, "failed to get handle for tsc syscon\n");
  ret = PTR_ERR(adc_priv->regmap);
  return ret;
 }

 adc_priv->adc_clk = devm_clk_get(&pdev->dev, "tsc_clk");
 if (IS_ERR(adc_priv->adc_clk)) {
  dev_err(&pdev->dev,
   "failed getting clock tsc_clk\n");
  ret = PTR_ERR(adc_priv->adc_clk);
  return ret;
 }

 adc_priv->irqno = platform_get_irq(pdev, 0);
 if (adc_priv->irqno <= 0)
  return -ENODEV;

 ret = regmap_update_bits(adc_priv->regmap, IPROC_REGCTL2,
    IPROC_ADC_AUXIN_SCAN_ENA, 0);
 if (ret) {
  dev_err(&pdev->dev, "failed to write IPROC_REGCTL2 %d\n", ret);
  return ret;
 }

 ret = devm_request_threaded_irq(&pdev->dev, adc_priv->irqno,
    iproc_adc_interrupt_handler,
    iproc_adc_interrupt_thread,
    IRQF_SHARED, "iproc-adc", indio_dev);
 if (ret) {
  dev_err(&pdev->dev, "request_irq error %d\n", ret);
  return ret;
 }

 ret = clk_prepare_enable(adc_priv->adc_clk);
 if (ret) {
  dev_err(&pdev->dev,
   "clk_prepare_enable failed %d\n", ret);
  return ret;
 }

 ret = iproc_adc_enable(indio_dev);
 if (ret) {
  dev_err(&pdev->dev, "failed to enable adc %d\n", ret);
  goto err_adc_enable;
 }

 indio_dev->name = "iproc-static-adc";
 indio_dev->dev.parent = &pdev->dev;
 indio_dev->dev.of_node = pdev->dev.of_node;
 indio_dev->info = &iproc_adc_iio_info;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = iproc_adc_iio_channels;
 indio_dev->num_channels = ARRAY_SIZE(iproc_adc_iio_channels);

 ret = iio_device_register(indio_dev);
 if (ret) {
  dev_err(&pdev->dev, "iio_device_register failed:err %d\n", ret);
  goto err_clk;
 }

 return 0;

err_clk:
 iproc_adc_disable(indio_dev);
err_adc_enable:
 clk_disable_unprepare(adc_priv->adc_clk);

 return ret;
}
