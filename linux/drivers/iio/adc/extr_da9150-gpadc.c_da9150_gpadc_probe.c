
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int of_node; int parent; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int of_node; struct device* parent; } ;
struct iio_dev {int num_channels; int channels; int modes; int * info; TYPE_1__ dev; int name; } ;
struct da9150_gpadc {int complete; int lock; struct device* dev; struct da9150* da9150; } ;
struct da9150 {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int IRQF_ONESHOT ;
 int da9150_gpadc_channels ;
 int da9150_gpadc_default_maps ;
 int da9150_gpadc_info ;
 int da9150_gpadc_irq ;
 int dev_err (struct device*,char*,...) ;
 struct da9150* dev_get_drvdata (int ) ;
 int dev_name (struct device*) ;
 struct iio_dev* devm_iio_device_alloc (struct device*,int) ;
 int devm_request_threaded_irq (struct device*,int,int *,int ,int ,char*,struct da9150_gpadc*) ;
 int iio_device_register (struct iio_dev*) ;
 int iio_map_array_register (struct iio_dev*,int ) ;
 int iio_map_array_unregister (struct iio_dev*) ;
 struct da9150_gpadc* iio_priv (struct iio_dev*) ;
 int init_completion (int *) ;
 int mutex_init (int *) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 int platform_set_drvdata (struct platform_device*,struct iio_dev*) ;

__attribute__((used)) static int da9150_gpadc_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct da9150 *da9150 = dev_get_drvdata(dev->parent);
 struct da9150_gpadc *gpadc;
 struct iio_dev *indio_dev;
 int irq, ret;

 indio_dev = devm_iio_device_alloc(dev, sizeof(*gpadc));
 if (!indio_dev) {
  dev_err(&pdev->dev, "Failed to allocate IIO device\n");
  return -ENOMEM;
 }
 gpadc = iio_priv(indio_dev);

 platform_set_drvdata(pdev, indio_dev);
 gpadc->da9150 = da9150;
 gpadc->dev = dev;
 mutex_init(&gpadc->lock);
 init_completion(&gpadc->complete);

 irq = platform_get_irq_byname(pdev, "GPADC");
 if (irq < 0)
  return irq;

 ret = devm_request_threaded_irq(dev, irq, ((void*)0), da9150_gpadc_irq,
     IRQF_ONESHOT, "GPADC", gpadc);
 if (ret) {
  dev_err(dev, "Failed to request IRQ %d: %d\n", irq, ret);
  return ret;
 }

 ret = iio_map_array_register(indio_dev, da9150_gpadc_default_maps);
 if (ret) {
  dev_err(dev, "Failed to register IIO maps: %d\n", ret);
  return ret;
 }

 indio_dev->name = dev_name(dev);
 indio_dev->dev.parent = dev;
 indio_dev->dev.of_node = pdev->dev.of_node;
 indio_dev->info = &da9150_gpadc_info;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = da9150_gpadc_channels;
 indio_dev->num_channels = ARRAY_SIZE(da9150_gpadc_channels);

 ret = iio_device_register(indio_dev);
 if (ret) {
  dev_err(dev, "Failed to register IIO device: %d\n", ret);
  goto iio_map_unreg;
 }

 return 0;

iio_map_unreg:
 iio_map_array_unregister(indio_dev);

 return ret;
}
