
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; int name; } ;
struct TYPE_2__ {struct device* parent; } ;
struct iio_dev {int num_channels; int channels; int modes; int * info; TYPE_1__ dev; int name; } ;
struct dht11 {scalar_t__ irq; int num_edges; int lock; int completion; scalar_t__ timestamp; int gpiod; struct device* dev; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ DHT11_DATA_VALID_TIME ;
 int EINVAL ;
 int ENOMEM ;
 int GPIOD_IN ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int desc_to_gpio (int ) ;
 int dev_err (struct device*,char*,...) ;
 int devm_gpiod_get (struct device*,int *,int ) ;
 struct iio_dev* devm_iio_device_alloc (struct device*,int) ;
 int devm_iio_device_register (struct device*,struct iio_dev*) ;
 int dht11_chan_spec ;
 int dht11_iio_info ;
 scalar_t__ gpiod_to_irq (int ) ;
 struct dht11* iio_priv (struct iio_dev*) ;
 int init_completion (int *) ;
 scalar_t__ ktime_get_boottime_ns () ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct iio_dev*) ;

__attribute__((used)) static int dht11_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct dht11 *dht11;
 struct iio_dev *iio;

 iio = devm_iio_device_alloc(dev, sizeof(*dht11));
 if (!iio) {
  dev_err(dev, "Failed to allocate IIO device\n");
  return -ENOMEM;
 }

 dht11 = iio_priv(iio);
 dht11->dev = dev;
 dht11->gpiod = devm_gpiod_get(dev, ((void*)0), GPIOD_IN);
 if (IS_ERR(dht11->gpiod))
  return PTR_ERR(dht11->gpiod);

 dht11->irq = gpiod_to_irq(dht11->gpiod);
 if (dht11->irq < 0) {
  dev_err(dev, "GPIO %d has no interrupt\n", desc_to_gpio(dht11->gpiod));
  return -EINVAL;
 }

 dht11->timestamp = ktime_get_boottime_ns() - DHT11_DATA_VALID_TIME - 1;
 dht11->num_edges = -1;

 platform_set_drvdata(pdev, iio);

 init_completion(&dht11->completion);
 mutex_init(&dht11->lock);
 iio->name = pdev->name;
 iio->dev.parent = &pdev->dev;
 iio->info = &dht11_iio_info;
 iio->modes = INDIO_DIRECT_MODE;
 iio->channels = dht11_chan_spec;
 iio->num_channels = ARRAY_SIZE(dht11_chan_spec);

 return devm_iio_device_register(dev, iio);
}
