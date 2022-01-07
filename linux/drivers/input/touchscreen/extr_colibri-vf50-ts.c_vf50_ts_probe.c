
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vf50_touch_device {scalar_t__ pen_irq; int gpio_ym; int gpio_yp; int gpio_xm; int gpio_xp; struct input_dev* ts_input; int min_pressure; struct iio_channel* channels; struct platform_device* pdev; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_4__ {struct device* parent; } ;
struct TYPE_3__ {int bustype; } ;
struct input_dev {int close; int open; TYPE_2__ dev; TYPE_1__ id; int name; } ;
struct iio_channel {scalar_t__ indio_dev; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int BUS_HOST ;
 int COLI_TOUCH_REQ_ADC_CHAN ;
 int DRIVER_NAME ;
 int EINVAL ;
 int ENOMEM ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (struct iio_channel*) ;
 int PTR_ERR (struct iio_channel*) ;
 int VF_ADC_MAX ;
 int dev_err (struct device*,char*,...) ;
 int devm_add_action (struct device*,int ,struct iio_channel*) ;
 struct input_dev* devm_input_allocate_device (struct device*) ;
 struct vf50_touch_device* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_threaded_irq (struct device*,int,int *,int ,int ,char*,struct vf50_touch_device*) ;
 struct iio_channel* iio_channel_get_all (struct device*) ;
 int iio_channel_release_all (struct iio_channel*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int ,int ,int ) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int input_set_drvdata (struct input_dev*,struct vf50_touch_device*) ;
 int of_property_read_u32 (int ,char*,int *) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 int vf50_ts_channel_release ;
 int vf50_ts_close ;
 int vf50_ts_get_gpiod (struct device*,int *,char*,int ) ;
 int vf50_ts_irq_bh ;
 int vf50_ts_open ;

__attribute__((used)) static int vf50_ts_probe(struct platform_device *pdev)
{
 struct input_dev *input;
 struct iio_channel *channels;
 struct device *dev = &pdev->dev;
 struct vf50_touch_device *touchdev;
 int num_adc_channels;
 int error;

 channels = iio_channel_get_all(dev);
 if (IS_ERR(channels))
  return PTR_ERR(channels);

 error = devm_add_action(dev, vf50_ts_channel_release, channels);
 if (error) {
  iio_channel_release_all(channels);
  dev_err(dev, "Failed to register iio channel release action");
  return error;
 }

 num_adc_channels = 0;
 while (channels[num_adc_channels].indio_dev)
  num_adc_channels++;

 if (num_adc_channels != COLI_TOUCH_REQ_ADC_CHAN) {
  dev_err(dev, "Inadequate ADC channels specified\n");
  return -EINVAL;
 }

 touchdev = devm_kzalloc(dev, sizeof(*touchdev), GFP_KERNEL);
 if (!touchdev)
  return -ENOMEM;

 touchdev->pdev = pdev;
 touchdev->channels = channels;

 error = of_property_read_u32(dev->of_node, "vf50-ts-min-pressure",
     &touchdev->min_pressure);
 if (error)
  return error;

 input = devm_input_allocate_device(dev);
 if (!input) {
  dev_err(dev, "Failed to allocate TS input device\n");
  return -ENOMEM;
 }

 input->name = DRIVER_NAME;
 input->id.bustype = BUS_HOST;
 input->dev.parent = dev;
 input->open = vf50_ts_open;
 input->close = vf50_ts_close;

 input_set_capability(input, EV_KEY, BTN_TOUCH);
 input_set_abs_params(input, ABS_X, 0, VF_ADC_MAX, 0, 0);
 input_set_abs_params(input, ABS_Y, 0, VF_ADC_MAX, 0, 0);
 input_set_abs_params(input, ABS_PRESSURE, 0, VF_ADC_MAX, 0, 0);

 touchdev->ts_input = input;
 input_set_drvdata(input, touchdev);

 error = input_register_device(input);
 if (error) {
  dev_err(dev, "Failed to register input device\n");
  return error;
 }

 error = vf50_ts_get_gpiod(dev, &touchdev->gpio_xp, "xp", GPIOD_OUT_LOW);
 if (error)
  return error;

 error = vf50_ts_get_gpiod(dev, &touchdev->gpio_xm,
    "xm", GPIOD_OUT_LOW);
 if (error)
  return error;

 error = vf50_ts_get_gpiod(dev, &touchdev->gpio_yp, "yp", GPIOD_OUT_LOW);
 if (error)
  return error;

 error = vf50_ts_get_gpiod(dev, &touchdev->gpio_ym, "ym", GPIOD_OUT_LOW);
 if (error)
  return error;

 touchdev->pen_irq = platform_get_irq(pdev, 0);
 if (touchdev->pen_irq < 0)
  return touchdev->pen_irq;

 error = devm_request_threaded_irq(dev, touchdev->pen_irq,
       ((void*)0), vf50_ts_irq_bh, IRQF_ONESHOT,
       "vf50 touch", touchdev);
 if (error) {
  dev_err(dev, "Failed to request IRQ %d: %d\n",
   touchdev->pen_irq, error);
  return error;
 }

 return 0;
}
