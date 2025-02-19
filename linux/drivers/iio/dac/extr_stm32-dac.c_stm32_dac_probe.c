
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct stm32_dac {int common; } ;
struct TYPE_6__ {struct device_node* of_node; int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_5__ {struct device_node* of_node; TYPE_2__* parent; } ;
struct iio_dev {int modes; int * info; TYPE_1__ dev; int name; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int dev_get_drvdata (int ) ;
 int dev_name (TYPE_2__*) ;
 struct iio_dev* devm_iio_device_alloc (TYPE_2__*,int) ;
 int devm_iio_device_register (TYPE_2__*,struct iio_dev*) ;
 struct stm32_dac* iio_priv (struct iio_dev*) ;
 int platform_set_drvdata (struct platform_device*,struct iio_dev*) ;
 int stm32_dac_chan_of_init (struct iio_dev*) ;
 int stm32_dac_iio_info ;

__attribute__((used)) static int stm32_dac_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct iio_dev *indio_dev;
 struct stm32_dac *dac;
 int ret;

 if (!np)
  return -ENODEV;

 indio_dev = devm_iio_device_alloc(&pdev->dev, sizeof(*dac));
 if (!indio_dev)
  return -ENOMEM;
 platform_set_drvdata(pdev, indio_dev);

 dac = iio_priv(indio_dev);
 dac->common = dev_get_drvdata(pdev->dev.parent);
 indio_dev->name = dev_name(&pdev->dev);
 indio_dev->dev.parent = &pdev->dev;
 indio_dev->dev.of_node = pdev->dev.of_node;
 indio_dev->info = &stm32_dac_iio_info;
 indio_dev->modes = INDIO_DIRECT_MODE;

 ret = stm32_dac_chan_of_init(indio_dev);
 if (ret < 0)
  return ret;

 return devm_iio_device_register(&pdev->dev, indio_dev);
}
