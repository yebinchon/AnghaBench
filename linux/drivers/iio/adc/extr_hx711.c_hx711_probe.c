
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_3__ {struct device* parent; } ;
struct iio_dev {char* name; int num_channels; int channels; int modes; int * info; TYPE_1__ dev; } ;
struct hx711_data {int gain_set; int gain_chan_a; int clock_frequency; int data_ready_delay_ns; void* reg_avdd; void* gpiod_dout; void* gpiod_pd_sck; int lock; struct device* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {int scale; int gain; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GPIOD_IN ;
 int GPIOD_OUT_LOW ;
 int HX711_GAIN_MAX ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_err (struct device*,char*,...) ;
 int dev_warn (struct device*,char*) ;
 void* devm_gpiod_get (struct device*,char*,int ) ;
 struct iio_dev* devm_iio_device_alloc (struct device*,int) ;
 void* devm_regulator_get (struct device*,char*) ;
 int hx711_chan_spec ;
 TYPE_2__* hx711_gain_to_scale ;
 int hx711_iio_info ;
 int hx711_trigger ;
 int iio_device_register (struct iio_dev*) ;
 int iio_pollfunc_store_time ;
 struct hx711_data* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int iio_triggered_buffer_setup (struct iio_dev*,int ,int ,int *) ;
 int mutex_init (int *) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int platform_set_drvdata (struct platform_device*,struct iio_dev*) ;
 int regulator_disable (void*) ;
 int regulator_enable (void*) ;
 int regulator_get_voltage (void*) ;

__attribute__((used)) static int hx711_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 struct hx711_data *hx711_data;
 struct iio_dev *indio_dev;
 int ret;
 int i;

 indio_dev = devm_iio_device_alloc(dev, sizeof(struct hx711_data));
 if (!indio_dev) {
  dev_err(dev, "failed to allocate IIO device\n");
  return -ENOMEM;
 }

 hx711_data = iio_priv(indio_dev);
 hx711_data->dev = dev;

 mutex_init(&hx711_data->lock);





 hx711_data->gpiod_pd_sck = devm_gpiod_get(dev, "sck", GPIOD_OUT_LOW);
 if (IS_ERR(hx711_data->gpiod_pd_sck)) {
  dev_err(dev, "failed to get sck-gpiod: err=%ld\n",
     PTR_ERR(hx711_data->gpiod_pd_sck));
  return PTR_ERR(hx711_data->gpiod_pd_sck);
 }





 hx711_data->gpiod_dout = devm_gpiod_get(dev, "dout", GPIOD_IN);
 if (IS_ERR(hx711_data->gpiod_dout)) {
  dev_err(dev, "failed to get dout-gpiod: err=%ld\n",
     PTR_ERR(hx711_data->gpiod_dout));
  return PTR_ERR(hx711_data->gpiod_dout);
 }

 hx711_data->reg_avdd = devm_regulator_get(dev, "avdd");
 if (IS_ERR(hx711_data->reg_avdd))
  return PTR_ERR(hx711_data->reg_avdd);

 ret = regulator_enable(hx711_data->reg_avdd);
 if (ret < 0)
  return ret;
 ret = regulator_get_voltage(hx711_data->reg_avdd);
 if (ret < 0)
  goto error_regulator;


 ret *= 100;

 for (i = 0; i < HX711_GAIN_MAX; i++)
  hx711_gain_to_scale[i].scale =
   ret / hx711_gain_to_scale[i].gain / 1678;

 hx711_data->gain_set = 128;
 hx711_data->gain_chan_a = 128;

 hx711_data->clock_frequency = 400000;
 ret = of_property_read_u32(np, "clock-frequency",
     &hx711_data->clock_frequency);





 if (hx711_data->clock_frequency < 20000) {
  dev_warn(dev, "clock-frequency too low - assuming 400 kHz\n");
  hx711_data->clock_frequency = 400000;
 }

 hx711_data->data_ready_delay_ns =
    1000000000 / hx711_data->clock_frequency;

 platform_set_drvdata(pdev, indio_dev);

 indio_dev->name = "hx711";
 indio_dev->dev.parent = &pdev->dev;
 indio_dev->info = &hx711_iio_info;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = hx711_chan_spec;
 indio_dev->num_channels = ARRAY_SIZE(hx711_chan_spec);

 ret = iio_triggered_buffer_setup(indio_dev, iio_pollfunc_store_time,
       hx711_trigger, ((void*)0));
 if (ret < 0) {
  dev_err(dev, "setup of iio triggered buffer failed\n");
  goto error_regulator;
 }

 ret = iio_device_register(indio_dev);
 if (ret < 0) {
  dev_err(dev, "Couldn't register the device\n");
  goto error_buffer;
 }

 return 0;

error_buffer:
 iio_triggered_buffer_cleanup(indio_dev);

error_regulator:
 regulator_disable(hx711_data->reg_avdd);

 return ret;
}
