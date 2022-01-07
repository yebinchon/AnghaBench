
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct srf04_data {scalar_t__ irqnr; struct device* dev; void* gpiod_echo; void* gpiod_trig; int falling; int rising; int lock; int cfg; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; int name; } ;
struct TYPE_3__ {struct device* parent; } ;
struct iio_dev {char* name; int num_channels; int channels; int modes; int * info; TYPE_1__ dev; } ;
struct TYPE_4__ {int data; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int GPIOD_IN ;
 int GPIOD_OUT_LOW ;
 int INDIO_DIRECT_MODE ;
 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_err (struct device*,char*,...) ;
 void* devm_gpiod_get (struct device*,char*,int ) ;
 struct iio_dev* devm_iio_device_alloc (struct device*,int) ;
 int devm_iio_device_register (struct device*,struct iio_dev*) ;
 int devm_request_irq (struct device*,int,int ,int,int ,struct iio_dev*) ;
 scalar_t__ gpiod_cansleep (void*) ;
 scalar_t__ gpiod_to_irq (void*) ;
 struct srf04_data* iio_priv (struct iio_dev*) ;
 int init_completion (int *) ;
 int mutex_init (int *) ;
 TYPE_2__* of_match_device (int ,struct device*) ;
 int of_srf04_match ;
 int platform_set_drvdata (struct platform_device*,struct iio_dev*) ;
 int srf04_chan_spec ;
 int srf04_handle_irq ;
 int srf04_iio_info ;

__attribute__((used)) static int srf04_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct srf04_data *data;
 struct iio_dev *indio_dev;
 int ret;

 indio_dev = devm_iio_device_alloc(dev, sizeof(struct srf04_data));
 if (!indio_dev) {
  dev_err(dev, "failed to allocate IIO device\n");
  return -ENOMEM;
 }

 data = iio_priv(indio_dev);
 data->dev = dev;
 data->cfg = of_match_device(of_srf04_match, dev)->data;

 mutex_init(&data->lock);
 init_completion(&data->rising);
 init_completion(&data->falling);

 data->gpiod_trig = devm_gpiod_get(dev, "trig", GPIOD_OUT_LOW);
 if (IS_ERR(data->gpiod_trig)) {
  dev_err(dev, "failed to get trig-gpios: err=%ld\n",
     PTR_ERR(data->gpiod_trig));
  return PTR_ERR(data->gpiod_trig);
 }

 data->gpiod_echo = devm_gpiod_get(dev, "echo", GPIOD_IN);
 if (IS_ERR(data->gpiod_echo)) {
  dev_err(dev, "failed to get echo-gpios: err=%ld\n",
     PTR_ERR(data->gpiod_echo));
  return PTR_ERR(data->gpiod_echo);
 }

 if (gpiod_cansleep(data->gpiod_echo)) {
  dev_err(data->dev, "cansleep-GPIOs not supported\n");
  return -ENODEV;
 }

 data->irqnr = gpiod_to_irq(data->gpiod_echo);
 if (data->irqnr < 0) {
  dev_err(data->dev, "gpiod_to_irq: %d\n", data->irqnr);
  return data->irqnr;
 }

 ret = devm_request_irq(dev, data->irqnr, srf04_handle_irq,
   IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING,
   pdev->name, indio_dev);
 if (ret < 0) {
  dev_err(data->dev, "request_irq: %d\n", ret);
  return ret;
 }

 platform_set_drvdata(pdev, indio_dev);

 indio_dev->name = "srf04";
 indio_dev->dev.parent = &pdev->dev;
 indio_dev->info = &srf04_iio_info;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = srf04_chan_spec;
 indio_dev->num_channels = ARRAY_SIZE(srf04_chan_spec);

 return devm_iio_device_register(dev, indio_dev);
}
