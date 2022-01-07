
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef unsigned long long u64 ;
typedef int u32 ;
struct nau7802_state {int vref_mv; unsigned long long* scale_avail; int data_lock; int lock; int sample_rate; struct i2c_client* client; int value_ok; } ;
struct TYPE_7__ {struct device_node* of_node; TYPE_3__* parent; } ;
struct iio_dev {int num_channels; unsigned long long* channels; int * info; int modes; int name; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_9__ {TYPE_2__* driver; struct device_node* of_node; } ;
struct i2c_client {scalar_t__ irq; TYPE_3__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_8__ {int name; } ;


 int ARRAY_SIZE (unsigned long long*) ;
 int EINVAL ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_HIGH ;
 int NAU7802_CTRL1_VLDO (int) ;
 int NAU7802_CTRL2_CRS (int ) ;
 int NAU7802_PUCTRL_AVDDS_BIT ;
 int NAU7802_PUCTRL_CS_BIT ;
 int NAU7802_PUCTRL_PUA_BIT ;
 int NAU7802_PUCTRL_PUD_BIT ;
 int NAU7802_PUCTRL_PUR_BIT ;
 int NAU7802_PUCTRL_RR_BIT ;
 int NAU7802_REG_ADC_CTRL ;
 int NAU7802_REG_CTRL1 ;
 int NAU7802_REG_CTRL2 ;
 int NAU7802_REG_PUCTRL ;
 int NAU7802_SAMP_FREQ_320 ;
 int dev_err (TYPE_3__*,char*) ;
 int dev_info (TYPE_3__*,char*) ;
 int dev_name (TYPE_3__*) ;
 struct iio_dev* devm_iio_device_alloc (TYPE_3__*,int) ;
 int disable_irq (scalar_t__) ;
 int free_irq (scalar_t__,struct iio_dev*) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int iio_device_register (struct iio_dev*) ;
 struct nau7802_state* iio_priv (struct iio_dev*) ;
 int init_completion (int *) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 unsigned long long* nau7802_chan_array ;
 int nau7802_eoc_trigger ;
 int nau7802_info ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int request_threaded_irq (scalar_t__,int *,int ,int,int ,struct iio_dev*) ;
 int udelay (int) ;

__attribute__((used)) static int nau7802_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct iio_dev *indio_dev;
 struct nau7802_state *st;
 struct device_node *np = client->dev.of_node;
 int i, ret;
 u8 data;
 u32 tmp = 0;

 if (!client->dev.of_node) {
  dev_err(&client->dev, "No device tree node available.\n");
  return -EINVAL;
 }

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*st));
 if (indio_dev == ((void*)0))
  return -ENOMEM;

 st = iio_priv(indio_dev);

 i2c_set_clientdata(client, indio_dev);

 indio_dev->dev.parent = &client->dev;
 indio_dev->dev.of_node = client->dev.of_node;
 indio_dev->name = dev_name(&client->dev);
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->info = &nau7802_info;

 st->client = client;


 ret = i2c_smbus_write_byte_data(st->client, NAU7802_REG_PUCTRL,
      NAU7802_PUCTRL_RR_BIT);
 if (ret < 0)
  return ret;


 ret = i2c_smbus_write_byte_data(st->client, NAU7802_REG_PUCTRL,
      NAU7802_PUCTRL_PUD_BIT);
 if (ret < 0)
  return ret;





 udelay(210);
 ret = i2c_smbus_read_byte_data(st->client, NAU7802_REG_PUCTRL);
 if (ret < 0)
  return ret;
 if (!(ret & NAU7802_PUCTRL_PUR_BIT))
  return ret;

 of_property_read_u32(np, "nuvoton,vldo", &tmp);
 st->vref_mv = tmp;

 data = NAU7802_PUCTRL_PUD_BIT | NAU7802_PUCTRL_PUA_BIT |
  NAU7802_PUCTRL_CS_BIT;
 if (tmp >= 2400)
  data |= NAU7802_PUCTRL_AVDDS_BIT;

 ret = i2c_smbus_write_byte_data(st->client, NAU7802_REG_PUCTRL, data);
 if (ret < 0)
  return ret;
 ret = i2c_smbus_write_byte_data(st->client, NAU7802_REG_ADC_CTRL, 0x30);
 if (ret < 0)
  return ret;

 if (tmp >= 2400) {
  data = NAU7802_CTRL1_VLDO((4500 - tmp) / 300);
  ret = i2c_smbus_write_byte_data(st->client, NAU7802_REG_CTRL1,
      data);
  if (ret < 0)
   return ret;
 }


 for (i = 0; i < ARRAY_SIZE(st->scale_avail); i++)
  st->scale_avail[i] = (((u64)st->vref_mv) * 1000000000ULL)
        >> (23 + i);

 init_completion(&st->value_ok);






 if (client->irq) {
  ret = request_threaded_irq(client->irq,
    ((void*)0),
    nau7802_eoc_trigger,
    IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
    client->dev.driver->name,
    indio_dev);
  if (ret) {
   dev_info(&client->dev,
    "Failed to allocate IRQ, using polling mode\n");
   client->irq = 0;
  } else
   disable_irq(client->irq);
 }

 if (!client->irq) {




  st->sample_rate = NAU7802_SAMP_FREQ_320;
  ret = i2c_smbus_write_byte_data(st->client, NAU7802_REG_CTRL2,
       NAU7802_CTRL2_CRS(st->sample_rate));
  if (ret)
   goto error_free_irq;
 }


 indio_dev->num_channels = ARRAY_SIZE(nau7802_chan_array);
 indio_dev->channels = nau7802_chan_array;

 mutex_init(&st->lock);
 mutex_init(&st->data_lock);

 ret = iio_device_register(indio_dev);
 if (ret < 0) {
  dev_err(&client->dev, "Couldn't register the device.\n");
  goto error_device_register;
 }

 return 0;

error_device_register:
 mutex_destroy(&st->lock);
 mutex_destroy(&st->data_lock);
error_free_irq:
 if (client->irq)
  free_irq(client->irq, indio_dev);

 return ret;
}
