
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int of_node; struct device* parent; } ;
struct iio_dev {int num_channels; int * channels; int modes; int * info; int name; TYPE_1__ dev; } ;


 int ENOMEM ;
 int INDIO_BUFFER_HARDWARE ;
 int dev_name (struct device*) ;
 struct iio_dev* devm_iio_device_alloc (struct device*,int ) ;
 int devm_iio_device_register (struct device*,struct iio_dev*) ;
 int iio_sd_mod_ch ;
 int iio_sd_mod_iio_info ;
 int platform_set_drvdata (struct platform_device*,struct iio_dev*) ;

__attribute__((used)) static int iio_sd_mod_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct iio_dev *iio;

 iio = devm_iio_device_alloc(dev, 0);
 if (!iio)
  return -ENOMEM;

 iio->dev.parent = dev;
 iio->dev.of_node = dev->of_node;
 iio->name = dev_name(dev);
 iio->info = &iio_sd_mod_iio_info;
 iio->modes = INDIO_BUFFER_HARDWARE;

 iio->num_channels = 1;
 iio->channels = &iio_sd_mod_ch;

 platform_set_drvdata(pdev, iio);

 return devm_iio_device_register(&pdev->dev, iio);
}
