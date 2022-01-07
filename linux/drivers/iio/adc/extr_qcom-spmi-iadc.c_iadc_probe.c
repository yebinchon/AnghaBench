
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct device {int parent; struct device_node* of_node; } ;
struct platform_device {int name; struct device dev; } ;
struct TYPE_2__ {struct device_node* of_node; struct device* parent; } ;
struct iio_dev {int num_channels; int channels; int * info; int modes; int name; TYPE_1__ dev; } ;
struct iadc_chip {int poll_eoc; struct device* dev; int * rsense; int base; int lock; int complete; int regmap; } ;
struct device_node {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 size_t IADC_EXT_RSENSE ;
 size_t IADC_INT_RSENSE ;
 int INDIO_DIRECT_MODE ;
 int dev_dbg (struct device*,char*,int ,int ) ;
 int dev_err (struct device*,char*) ;
 int dev_get_regmap (int ,int *) ;
 int device_init_wakeup (struct device*,int) ;
 struct iio_dev* devm_iio_device_alloc (struct device*,int) ;
 int devm_iio_device_register (struct device*,struct iio_dev*) ;
 int devm_request_irq (struct device*,int,int ,int ,char*,struct iadc_chip*) ;
 int enable_irq_wake (int) ;
 int iadc_channels ;
 int iadc_info ;
 int iadc_isr ;
 int iadc_reset (struct iadc_chip*) ;
 int iadc_rsense_read (struct iadc_chip*,struct device_node*) ;
 int iadc_update_offset (struct iadc_chip*) ;
 int iadc_version_check (struct iadc_chip*) ;
 struct iadc_chip* iio_priv (struct iio_dev*) ;
 int init_completion (int *) ;
 int mutex_init (int *) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int platform_get_irq (struct platform_device*,int ) ;

__attribute__((used)) static int iadc_probe(struct platform_device *pdev)
{
 struct device_node *node = pdev->dev.of_node;
 struct device *dev = &pdev->dev;
 struct iio_dev *indio_dev;
 struct iadc_chip *iadc;
 int ret, irq_eoc;
 u32 res;

 indio_dev = devm_iio_device_alloc(dev, sizeof(*iadc));
 if (!indio_dev)
  return -ENOMEM;

 iadc = iio_priv(indio_dev);
 iadc->dev = dev;

 iadc->regmap = dev_get_regmap(dev->parent, ((void*)0));
 if (!iadc->regmap)
  return -ENODEV;

 init_completion(&iadc->complete);
 mutex_init(&iadc->lock);

 ret = of_property_read_u32(node, "reg", &res);
 if (ret < 0)
  return -ENODEV;

 iadc->base = res;

 ret = iadc_version_check(iadc);
 if (ret < 0)
  return -ENODEV;

 ret = iadc_rsense_read(iadc, node);
 if (ret < 0)
  return -ENODEV;

 dev_dbg(iadc->dev, "sense resistors %d and %d micro Ohm\n",
  iadc->rsense[IADC_INT_RSENSE],
  iadc->rsense[IADC_EXT_RSENSE]);

 irq_eoc = platform_get_irq(pdev, 0);
 if (irq_eoc == -EPROBE_DEFER)
  return irq_eoc;

 if (irq_eoc < 0)
  iadc->poll_eoc = 1;

 ret = iadc_reset(iadc);
 if (ret < 0) {
  dev_err(dev, "reset failed\n");
  return ret;
 }

 if (!iadc->poll_eoc) {
  ret = devm_request_irq(dev, irq_eoc, iadc_isr, 0,
     "spmi-iadc", iadc);
  if (!ret)
   enable_irq_wake(irq_eoc);
  else
   return ret;
 } else {
  device_init_wakeup(iadc->dev, 1);
 }

 ret = iadc_update_offset(iadc);
 if (ret < 0) {
  dev_err(dev, "failed offset calibration\n");
  return ret;
 }

 indio_dev->dev.parent = dev;
 indio_dev->dev.of_node = node;
 indio_dev->name = pdev->name;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->info = &iadc_info;
 indio_dev->channels = iadc_channels;
 indio_dev->num_channels = ARRAY_SIZE(iadc_channels);

 return devm_iio_device_register(dev, indio_dev);
}
