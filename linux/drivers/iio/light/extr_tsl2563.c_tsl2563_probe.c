
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct tsl2563_platform_data {int cover_comp_gain; } ;
struct tsl2563_chip {int low_thres; int high_thres; int cover_comp_gain; int poweroff_work; void* calib1; void* calib0; int intr; int gainlevel; int lock; struct i2c_client* client; } ;
struct TYPE_6__ {TYPE_2__* parent; } ;
struct iio_dev {int * info; int modes; TYPE_1__ dev; int num_channels; int channels; int name; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_7__ {struct device_node* of_node; struct tsl2563_platform_data* platform_data; } ;
struct i2c_client {TYPE_2__ dev; scalar_t__ irq; int name; } ;
struct device_node {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int CALIB_BASE_SYSFS ;
 int ENOMEM ;
 int HZ ;
 int INDIO_DIRECT_MODE ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_RISING ;
 int TSL2563_INT_PERSIST (int) ;
 int cancel_delayed_work_sync (int *) ;
 int dev_err (TYPE_2__*,char*,int) ;
 int dev_info (TYPE_2__*,char*,int,int) ;
 struct iio_dev* devm_iio_device_alloc (TYPE_2__*,int) ;
 int devm_request_threaded_irq (TYPE_2__*,scalar_t__,int *,int *,int,char*,struct iio_dev*) ;
 int i2c_set_clientdata (struct i2c_client*,struct tsl2563_chip*) ;
 int iio_device_register (struct iio_dev*) ;
 struct tsl2563_chip* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int schedule_delayed_work (int *,int) ;
 void* tsl2563_calib_from_sysfs (int ) ;
 int tsl2563_channels ;
 int tsl2563_configure (struct tsl2563_chip*) ;
 int tsl2563_detect (struct tsl2563_chip*) ;
 int tsl2563_event_handler ;
 int tsl2563_gainlevel_table ;
 int tsl2563_info ;
 int tsl2563_info_no_irq ;
 int tsl2563_poweroff_work ;
 int tsl2563_read_id (struct tsl2563_chip*,int*) ;

__attribute__((used)) static int tsl2563_probe(struct i2c_client *client,
    const struct i2c_device_id *device_id)
{
 struct iio_dev *indio_dev;
 struct tsl2563_chip *chip;
 struct tsl2563_platform_data *pdata = client->dev.platform_data;
 struct device_node *np = client->dev.of_node;
 int err = 0;
 u8 id = 0;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*chip));
 if (!indio_dev)
  return -ENOMEM;

 chip = iio_priv(indio_dev);

 i2c_set_clientdata(client, chip);
 chip->client = client;

 err = tsl2563_detect(chip);
 if (err) {
  dev_err(&client->dev, "detect error %d\n", -err);
  return err;
 }

 err = tsl2563_read_id(chip, &id);
 if (err) {
  dev_err(&client->dev, "read id error %d\n", -err);
  return err;
 }

 mutex_init(&chip->lock);


 chip->low_thres = 0x0;
 chip->high_thres = 0xffff;
 chip->gainlevel = tsl2563_gainlevel_table;
 chip->intr = TSL2563_INT_PERSIST(4);
 chip->calib0 = tsl2563_calib_from_sysfs(CALIB_BASE_SYSFS);
 chip->calib1 = tsl2563_calib_from_sysfs(CALIB_BASE_SYSFS);

 if (pdata)
  chip->cover_comp_gain = pdata->cover_comp_gain;
 else if (np)
  of_property_read_u32(np, "amstaos,cover-comp-gain",
         &chip->cover_comp_gain);
 else
  chip->cover_comp_gain = 1;

 dev_info(&client->dev, "model %d, rev. %d\n", id >> 4, id & 0x0f);
 indio_dev->name = client->name;
 indio_dev->channels = tsl2563_channels;
 indio_dev->num_channels = ARRAY_SIZE(tsl2563_channels);
 indio_dev->dev.parent = &client->dev;
 indio_dev->modes = INDIO_DIRECT_MODE;

 if (client->irq)
  indio_dev->info = &tsl2563_info;
 else
  indio_dev->info = &tsl2563_info_no_irq;

 if (client->irq) {
  err = devm_request_threaded_irq(&client->dev, client->irq,
        ((void*)0),
        &tsl2563_event_handler,
        IRQF_TRIGGER_RISING | IRQF_ONESHOT,
        "tsl2563_event",
        indio_dev);
  if (err) {
   dev_err(&client->dev, "irq request error %d\n", -err);
   return err;
  }
 }

 err = tsl2563_configure(chip);
 if (err) {
  dev_err(&client->dev, "configure error %d\n", -err);
  return err;
 }

 INIT_DELAYED_WORK(&chip->poweroff_work, tsl2563_poweroff_work);


 schedule_delayed_work(&chip->poweroff_work, 5 * HZ);

 err = iio_device_register(indio_dev);
 if (err) {
  dev_err(&client->dev, "iio registration error %d\n", -err);
  goto fail;
 }

 return 0;

fail:
 cancel_delayed_work_sync(&chip->poweroff_work);
 return err;
}
