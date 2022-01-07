
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct z188_adc {struct resource* mem; int * base; } ;
struct resource {int start; } ;
struct mcb_device_id {int dummy; } ;
struct mcb_device {int dev; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {char* name; int num_channels; int channels; int modes; int * info; TYPE_1__ dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int ENXIO ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (struct resource*) ;
 int PTR_ERR (struct resource*) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int iio_device_register (struct iio_dev*) ;
 struct z188_adc* iio_priv (struct iio_dev*) ;
 int * ioremap (int ,int ) ;
 int mcb_release_mem (struct resource*) ;
 struct resource* mcb_request_mem (struct mcb_device*,char*) ;
 int mcb_set_drvdata (struct mcb_device*,struct iio_dev*) ;
 int men_z188_config_channels (int *) ;
 int resource_size (struct resource*) ;
 int z188_adc_iio_channels ;
 int z188_adc_info ;

__attribute__((used)) static int men_z188_probe(struct mcb_device *dev,
   const struct mcb_device_id *id)
{
 struct z188_adc *adc;
 struct iio_dev *indio_dev;
 struct resource *mem;

 indio_dev = devm_iio_device_alloc(&dev->dev, sizeof(struct z188_adc));
 if (!indio_dev)
  return -ENOMEM;

 adc = iio_priv(indio_dev);
 indio_dev->name = "z188-adc";
 indio_dev->dev.parent = &dev->dev;
 indio_dev->info = &z188_adc_info;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = z188_adc_iio_channels;
 indio_dev->num_channels = ARRAY_SIZE(z188_adc_iio_channels);

 mem = mcb_request_mem(dev, "z188-adc");
 if (IS_ERR(mem))
  return PTR_ERR(mem);

 adc->base = ioremap(mem->start, resource_size(mem));
 if (adc->base == ((void*)0))
  goto err;

 men_z188_config_channels(adc->base);

 adc->mem = mem;
 mcb_set_drvdata(dev, indio_dev);

 return iio_device_register(indio_dev);

err:
 mcb_release_mem(mem);
 return -ENXIO;
}
