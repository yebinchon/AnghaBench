
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; scalar_t__ irq; int name; int adapter; } ;
struct gpio_chip {int can_sleep; int base; int ngpio; int owner; int label; int names; int * parent; int set; int get; int direction_output; int direction_input; } ;
struct adp5588_gpio_platform_data {int gpio_start; unsigned int pullup_dis_mask; int (* setup ) (struct i2c_client*,int,int ,int ) ;int context; int names; } ;
struct adp5588_gpio {struct gpio_chip gpio_chip; void** dir; void** dat_out; struct i2c_client* client; int lock; } ;


 int ADP5588_BANK (int ) ;
 int ADP5588_DEVICE_ID_MASK ;
 int ADP5588_MAXGPIO ;
 scalar_t__ DEV_ID ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ GPIO_DAT_OUT1 ;
 scalar_t__ GPIO_DIR1 ;
 scalar_t__ GPIO_INT_EN1 ;
 scalar_t__ GPIO_PULL1 ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 scalar_t__ KP_GPIO1 ;
 int THIS_MODULE ;
 scalar_t__ WA_DELAYED_READOUT_REVID (int) ;
 int adp5588_gpio_direction_input ;
 int adp5588_gpio_direction_output ;
 int adp5588_gpio_get_value ;
 void* adp5588_gpio_read (struct i2c_client*,scalar_t__) ;
 int adp5588_gpio_set_value ;
 int adp5588_gpio_write (struct i2c_client*,scalar_t__,unsigned int) ;
 int adp5588_irq_setup (struct adp5588_gpio*) ;
 int dev_err (int *,char*) ;
 struct adp5588_gpio_platform_data* dev_get_platdata (int *) ;
 int dev_warn (int *,char*,...) ;
 int devm_gpiochip_add_data (int *,struct gpio_chip*,struct adp5588_gpio*) ;
 struct adp5588_gpio* devm_kzalloc (int *,int,int ) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct adp5588_gpio*) ;
 int mutex_init (int *) ;
 int stub1 (struct i2c_client*,int,int ,int ) ;

__attribute__((used)) static int adp5588_gpio_probe(struct i2c_client *client)
{
 struct adp5588_gpio_platform_data *pdata =
   dev_get_platdata(&client->dev);
 struct adp5588_gpio *dev;
 struct gpio_chip *gc;
 int ret, i, revid;
 unsigned int pullup_dis_mask = 0;

 if (!i2c_check_functionality(client->adapter,
     I2C_FUNC_SMBUS_BYTE_DATA)) {
  dev_err(&client->dev, "SMBUS Byte Data not Supported\n");
  return -EIO;
 }

 dev = devm_kzalloc(&client->dev, sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return -ENOMEM;

 dev->client = client;

 gc = &dev->gpio_chip;
 gc->direction_input = adp5588_gpio_direction_input;
 gc->direction_output = adp5588_gpio_direction_output;
 gc->get = adp5588_gpio_get_value;
 gc->set = adp5588_gpio_set_value;
 gc->can_sleep = 1;
 gc->base = -1;
 gc->parent = &client->dev;

 if (pdata) {
  gc->base = pdata->gpio_start;
  gc->names = pdata->names;
  pullup_dis_mask = pdata->pullup_dis_mask;
 }

 gc->ngpio = ADP5588_MAXGPIO;
 gc->label = client->name;
 gc->owner = THIS_MODULE;

 mutex_init(&dev->lock);

 ret = adp5588_gpio_read(dev->client, DEV_ID);
 if (ret < 0)
  return ret;

 revid = ret & ADP5588_DEVICE_ID_MASK;

 for (i = 0, ret = 0; i <= ADP5588_BANK(ADP5588_MAXGPIO); i++) {
  dev->dat_out[i] = adp5588_gpio_read(client, GPIO_DAT_OUT1 + i);
  dev->dir[i] = adp5588_gpio_read(client, GPIO_DIR1 + i);
  ret |= adp5588_gpio_write(client, KP_GPIO1 + i, 0);
  ret |= adp5588_gpio_write(client, GPIO_PULL1 + i,
    (pullup_dis_mask >> (8 * i)) & 0xFF);
  ret |= adp5588_gpio_write(client, GPIO_INT_EN1 + i, 0);
  if (ret)
   return ret;
 }

 if (client->irq) {
  if (WA_DELAYED_READOUT_REVID(revid)) {
   dev_warn(&client->dev, "GPIO int not supported\n");
  } else {
   ret = adp5588_irq_setup(dev);
   if (ret)
    return ret;
  }
 }

 ret = devm_gpiochip_add_data(&client->dev, &dev->gpio_chip, dev);
 if (ret)
  return ret;

 if (pdata && pdata->setup) {
  ret = pdata->setup(client, gc->base, gc->ngpio, pdata->context);
  if (ret < 0)
   dev_warn(&client->dev, "setup failed, %d\n", ret);
 }

 i2c_set_clientdata(client, dev);

 return 0;
}
