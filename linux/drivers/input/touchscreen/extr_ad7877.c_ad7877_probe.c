
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_14__ {TYPE_2__* driver; } ;
struct spi_device {scalar_t__ irq; scalar_t__ max_speed_hz; int bits_per_word; TYPE_3__ dev; } ;
struct TYPE_12__ {TYPE_3__* parent; } ;
struct input_dev {char* name; int absbit; int evbit; int keybit; TYPE_1__ dev; int phys; } ;
struct ad7877_platform_data {scalar_t__ pressure_max; int pressure_min; scalar_t__ y_max; scalar_t__ y_min; scalar_t__ x_max; scalar_t__ x_min; int pen_down_acc_interval; int averaging; int acquisition_time; int first_conversion_delay; int stopacq_polarity; scalar_t__ x_plate_ohms; scalar_t__ vref_delay_usecs; scalar_t__ model; } ;
struct ad7877 {int model; int vref_delay_usecs; int x_plate_ohms; int phys; int pen_down_acc_interval; int averaging; int acquisition_time; int first_conversion_delay; int stopacq_polarity; int pressure_max; int lock; int mutex; int timer; struct input_dev* input; struct spi_device* spi; } ;
struct TYPE_13__ {int name; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 scalar_t__ AD7877_EXTW_GPIO_3_CONF ;
 scalar_t__ AD7877_MM_SEQUENCE ;
 int AD7877_REG_EXTWRITE ;
 int AD7877_REG_SEQ1 ;
 int BTN_TOUCH ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int EV_ABS ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 scalar_t__ MAX_12BIT ;
 scalar_t__ MAX_SPI_FREQ_HZ ;
 int __set_bit (int ,int ) ;
 int ad7877_attr_group ;
 int ad7877_disable ;
 int ad7877_irq ;
 scalar_t__ ad7877_read (struct spi_device*,int ) ;
 int ad7877_setup_ts_def_msg (struct spi_device*,struct ad7877*) ;
 int ad7877_timer ;
 int ad7877_write (struct spi_device*,int ,scalar_t__) ;
 int dev_dbg (TYPE_3__*,char*,...) ;
 int dev_err (TYPE_3__*,char*,char*,char*) ;
 struct ad7877_platform_data* dev_get_platdata (TYPE_3__*) ;
 char* dev_name (TYPE_3__*) ;
 int devm_add_action_or_reset (TYPE_3__*,int ,struct ad7877*) ;
 int devm_device_add_group (TYPE_3__*,int *) ;
 struct input_dev* devm_input_allocate_device (TYPE_3__*) ;
 struct ad7877* devm_kzalloc (TYPE_3__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_3__*,scalar_t__,int *,int ,int,int ,struct ad7877*) ;
 scalar_t__ gpio3 ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int ,int ,scalar_t__,int ,int ) ;
 int mutex_init (int *) ;
 int snprintf (int ,int,char*,char*) ;
 int spi_set_drvdata (struct spi_device*,struct ad7877*) ;
 int spi_setup (struct spi_device*) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int ad7877_probe(struct spi_device *spi)
{
 struct ad7877 *ts;
 struct input_dev *input_dev;
 struct ad7877_platform_data *pdata = dev_get_platdata(&spi->dev);
 int err;
 u16 verify;

 if (!spi->irq) {
  dev_dbg(&spi->dev, "no IRQ?\n");
  return -ENODEV;
 }

 if (!pdata) {
  dev_dbg(&spi->dev, "no platform data?\n");
  return -ENODEV;
 }


 if (spi->max_speed_hz > MAX_SPI_FREQ_HZ) {
  dev_dbg(&spi->dev, "SPI CLK %d Hz?\n",spi->max_speed_hz);
  return -EINVAL;
 }

 spi->bits_per_word = 16;
 err = spi_setup(spi);
 if (err) {
  dev_dbg(&spi->dev, "spi master doesn't support 16 bits/word\n");
  return err;
 }

 ts = devm_kzalloc(&spi->dev, sizeof(struct ad7877), GFP_KERNEL);
 if (!ts)
  return -ENOMEM;

 input_dev = devm_input_allocate_device(&spi->dev);
 if (!input_dev)
  return -ENOMEM;

 err = devm_add_action_or_reset(&spi->dev, ad7877_disable, ts);
 if (err)
  return err;

 spi_set_drvdata(spi, ts);
 ts->spi = spi;
 ts->input = input_dev;

 timer_setup(&ts->timer, ad7877_timer, 0);
 mutex_init(&ts->mutex);
 spin_lock_init(&ts->lock);

 ts->model = pdata->model ? : 7877;
 ts->vref_delay_usecs = pdata->vref_delay_usecs ? : 100;
 ts->x_plate_ohms = pdata->x_plate_ohms ? : 400;
 ts->pressure_max = pdata->pressure_max ? : ~0;

 ts->stopacq_polarity = pdata->stopacq_polarity;
 ts->first_conversion_delay = pdata->first_conversion_delay;
 ts->acquisition_time = pdata->acquisition_time;
 ts->averaging = pdata->averaging;
 ts->pen_down_acc_interval = pdata->pen_down_acc_interval;

 snprintf(ts->phys, sizeof(ts->phys), "%s/input0", dev_name(&spi->dev));

 input_dev->name = "AD7877 Touchscreen";
 input_dev->phys = ts->phys;
 input_dev->dev.parent = &spi->dev;

 __set_bit(EV_KEY, input_dev->evbit);
 __set_bit(BTN_TOUCH, input_dev->keybit);
 __set_bit(EV_ABS, input_dev->evbit);
 __set_bit(ABS_X, input_dev->absbit);
 __set_bit(ABS_Y, input_dev->absbit);
 __set_bit(ABS_PRESSURE, input_dev->absbit);

 input_set_abs_params(input_dev, ABS_X,
   pdata->x_min ? : 0,
   pdata->x_max ? : MAX_12BIT,
   0, 0);
 input_set_abs_params(input_dev, ABS_Y,
   pdata->y_min ? : 0,
   pdata->y_max ? : MAX_12BIT,
   0, 0);
 input_set_abs_params(input_dev, ABS_PRESSURE,
   pdata->pressure_min, pdata->pressure_max, 0, 0);

 ad7877_write(spi, AD7877_REG_SEQ1, AD7877_MM_SEQUENCE);

 verify = ad7877_read(spi, AD7877_REG_SEQ1);

 if (verify != AD7877_MM_SEQUENCE) {
  dev_err(&spi->dev, "%s: Failed to probe %s\n",
   dev_name(&spi->dev), input_dev->name);
  return -ENODEV;
 }

 if (gpio3)
  ad7877_write(spi, AD7877_REG_EXTWRITE, AD7877_EXTW_GPIO_3_CONF);

 ad7877_setup_ts_def_msg(spi, ts);



 err = devm_request_threaded_irq(&spi->dev, spi->irq, ((void*)0), ad7877_irq,
     IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
     spi->dev.driver->name, ts);
 if (err) {
  dev_dbg(&spi->dev, "irq %d busy?\n", spi->irq);
  return err;
 }

 err = devm_device_add_group(&spi->dev, &ad7877_attr_group);
 if (err)
  return err;

 err = input_register_device(input_dev);
 if (err)
  return err;

 return 0;
}
