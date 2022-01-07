
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct resource {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct npcm_adc {int adc_sample_hz; scalar_t__ adc_clk; scalar_t__ vref; scalar_t__ regs; int wq; scalar_t__ rst_regmap; struct device* dev; } ;
struct TYPE_2__ {struct device* parent; } ;
struct iio_dev {int num_channels; int channels; int modes; int * info; TYPE_1__ dev; int name; } ;
struct device_node {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (scalar_t__) ;
 scalar_t__ NPCM_ADCCON ;
 int NPCM_ADCCON_ADC_CONV ;
 int NPCM_ADCCON_ADC_EN ;
 int NPCM_ADCCON_DIV_MASK ;
 int NPCM_ADCCON_DIV_SHIFT ;
 int NPCM_ADCCON_REFSEL ;
 int NPCM_ADC_ENABLE ;
 int PTR_ERR (scalar_t__) ;
 int clk_disable_unprepare (scalar_t__) ;
 int clk_get_rate (scalar_t__) ;
 int dev_err (struct device*,char*) ;
 int dev_name (struct device*) ;
 int dev_warn (struct device*,char*) ;
 scalar_t__ devm_clk_get (struct device*,int *) ;
 struct iio_dev* devm_iio_device_alloc (struct device*,int) ;
 scalar_t__ devm_ioremap_resource (struct device*,struct resource*) ;
 scalar_t__ devm_regulator_get_optional (struct device*,char*) ;
 int devm_request_irq (struct device*,int,int ,int ,char*,struct iio_dev*) ;
 int iio_device_register (struct iio_dev*) ;
 struct npcm_adc* iio_priv (struct iio_dev*) ;
 int init_waitqueue_head (int *) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int npcm_adc_iio_channels ;
 int npcm_adc_iio_info ;
 int npcm_adc_isr ;
 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct iio_dev*) ;
 int pr_info (char*) ;
 int regulator_disable (scalar_t__) ;
 int regulator_enable (scalar_t__) ;
 scalar_t__ syscon_regmap_lookup_by_compatible (char*) ;

__attribute__((used)) static int npcm_adc_probe(struct platform_device *pdev)
{
 int ret;
 int irq;
 u32 div;
 u32 reg_con;
 struct resource *res;
 struct npcm_adc *info;
 struct iio_dev *indio_dev;
 struct device *dev = &pdev->dev;
 struct device_node *np = pdev->dev.of_node;

 indio_dev = devm_iio_device_alloc(&pdev->dev, sizeof(*info));
 if (!indio_dev)
  return -ENOMEM;
 info = iio_priv(indio_dev);

 info->dev = &pdev->dev;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 info->regs = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(info->regs))
  return PTR_ERR(info->regs);

 info->adc_clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(info->adc_clk)) {
  dev_warn(&pdev->dev, "ADC clock failed: can't read clk\n");
  return PTR_ERR(info->adc_clk);
 }


 reg_con = ioread32(info->regs + NPCM_ADCCON);
 div = reg_con & NPCM_ADCCON_DIV_MASK;
 div = div >> NPCM_ADCCON_DIV_SHIFT;
 info->adc_sample_hz = clk_get_rate(info->adc_clk) / ((div + 1) * 2);

 if (of_device_is_compatible(np, "nuvoton,npcm750-adc")) {
  info->rst_regmap = syscon_regmap_lookup_by_compatible
   ("nuvoton,npcm750-rst");
  if (IS_ERR(info->rst_regmap)) {
   dev_err(&pdev->dev, "Failed to find nuvoton,npcm750-rst\n");
   ret = PTR_ERR(info->rst_regmap);
   goto err_disable_clk;
  }
 }

 irq = platform_get_irq(pdev, 0);
 if (irq <= 0) {
  ret = -EINVAL;
  goto err_disable_clk;
 }

 ret = devm_request_irq(&pdev->dev, irq, npcm_adc_isr, 0,
          "NPCM_ADC", indio_dev);
 if (ret < 0) {
  dev_err(dev, "failed requesting interrupt\n");
  goto err_disable_clk;
 }

 reg_con = ioread32(info->regs + NPCM_ADCCON);
 info->vref = devm_regulator_get_optional(&pdev->dev, "vref");
 if (!IS_ERR(info->vref)) {
  ret = regulator_enable(info->vref);
  if (ret) {
   dev_err(&pdev->dev, "Can't enable ADC reference voltage\n");
   goto err_disable_clk;
  }

  iowrite32(reg_con & ~NPCM_ADCCON_REFSEL,
     info->regs + NPCM_ADCCON);
 } else {




  if (PTR_ERR(info->vref) != -ENODEV) {
   ret = PTR_ERR(info->vref);
   goto err_disable_clk;
  }


  iowrite32(reg_con | NPCM_ADCCON_REFSEL,
     info->regs + NPCM_ADCCON);
 }

 init_waitqueue_head(&info->wq);

 reg_con = ioread32(info->regs + NPCM_ADCCON);
 reg_con |= NPCM_ADC_ENABLE;


 iowrite32(reg_con, info->regs + NPCM_ADCCON);


 iowrite32(reg_con | NPCM_ADCCON_ADC_CONV, info->regs + NPCM_ADCCON);

 platform_set_drvdata(pdev, indio_dev);
 indio_dev->name = dev_name(&pdev->dev);
 indio_dev->dev.parent = &pdev->dev;
 indio_dev->info = &npcm_adc_iio_info;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = npcm_adc_iio_channels;
 indio_dev->num_channels = ARRAY_SIZE(npcm_adc_iio_channels);

 ret = iio_device_register(indio_dev);
 if (ret) {
  dev_err(&pdev->dev, "Couldn't register the device.\n");
  goto err_iio_register;
 }

 pr_info("NPCM ADC driver probed\n");

 return 0;

err_iio_register:
 iowrite32(reg_con & ~NPCM_ADCCON_ADC_EN, info->regs + NPCM_ADCCON);
 if (!IS_ERR(info->vref))
  regulator_disable(info->vref);
err_disable_clk:
 clk_disable_unprepare(info->adc_clk);

 return ret;
}
