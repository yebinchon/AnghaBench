
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct pcf857x_platform_data {unsigned int n_latch; int gpio_base; int (* setup ) (struct i2c_client*,int,int,int ) ;int context; } ;
struct TYPE_15__ {int base; int can_sleep; int ngpio; int label; int direction_output; int direction_input; int set; int get; int owner; TYPE_5__* parent; } ;
struct TYPE_16__ {char* name; int irq_bus_sync_unlock; int irq_bus_lock; int irq_set_wake; void* irq_unmask; void* irq_mask; void* irq_ack; int irq_disable; int irq_enable; } ;
struct pcf857x {int (* read ) (struct i2c_client*) ;unsigned int out; unsigned int status; TYPE_1__ chip; TYPE_2__ irqchip; struct i2c_client* client; int write; int lock; } ;
struct i2c_device_id {int driver_data; } ;
struct TYPE_17__ {struct device_node* of_node; } ;
struct i2c_client {int name; TYPE_5__ dev; int irq; int adapter; } ;
struct device_node {int dummy; } ;


 int CONFIG_OF ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_I2C ;
 int I2C_FUNC_SMBUS_BYTE ;
 int IRQF_ONESHOT ;
 int IRQF_SHARED ;
 int IRQF_TRIGGER_FALLING ;
 int IRQ_TYPE_NONE ;
 scalar_t__ IS_ENABLED (int ) ;
 int THIS_MODULE ;
 int dev_dbg (TYPE_5__*,char*,...) ;
 int dev_err (TYPE_5__*,char*) ;
 struct pcf857x_platform_data* dev_get_platdata (TYPE_5__*) ;
 int dev_info (TYPE_5__*,char*) ;
 int dev_name (TYPE_5__*) ;
 int dev_warn (TYPE_5__*,char*,int) ;
 int devm_gpiochip_add_data (TYPE_5__*,TYPE_1__*,struct pcf857x*) ;
 struct pcf857x* devm_kzalloc (TYPE_5__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_5__*,int ,int *,int ,int,int ,struct pcf857x*) ;
 int gpiochip_irqchip_add_nested (TYPE_1__*,TYPE_2__*,int ,int ,int ) ;
 int gpiochip_set_nested_irqchip (TYPE_1__*,TYPE_2__*,int ) ;
 int handle_level_irq ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_read_le16 (struct i2c_client*) ;
 int i2c_read_le8 (struct i2c_client*) ;
 int i2c_set_clientdata (struct i2c_client*,struct pcf857x*) ;
 int i2c_smbus_read_byte (struct i2c_client*) ;
 int i2c_write_le16 ;
 int i2c_write_le8 ;
 int mutex_init (int *) ;
 void* noop ;
 int of_property_read_u32 (struct device_node*,char*,unsigned int*) ;
 int pcf857x_get ;
 int pcf857x_input ;
 int pcf857x_irq ;
 int pcf857x_irq_bus_lock ;
 int pcf857x_irq_bus_sync_unlock ;
 int pcf857x_irq_disable ;
 int pcf857x_irq_enable ;
 int pcf857x_irq_set_wake ;
 int pcf857x_output ;
 int pcf857x_set ;
 int stub1 (struct i2c_client*,int,int,int ) ;

__attribute__((used)) static int pcf857x_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct pcf857x_platform_data *pdata = dev_get_platdata(&client->dev);
 struct device_node *np = client->dev.of_node;
 struct pcf857x *gpio;
 unsigned int n_latch = 0;
 int status;

 if (IS_ENABLED(CONFIG_OF) && np)
  of_property_read_u32(np, "lines-initial-states", &n_latch);
 else if (pdata)
  n_latch = pdata->n_latch;
 else
  dev_dbg(&client->dev, "no platform data\n");


 gpio = devm_kzalloc(&client->dev, sizeof(*gpio), GFP_KERNEL);
 if (!gpio)
  return -ENOMEM;

 mutex_init(&gpio->lock);

 gpio->chip.base = pdata ? pdata->gpio_base : -1;
 gpio->chip.can_sleep = 1;
 gpio->chip.parent = &client->dev;
 gpio->chip.owner = THIS_MODULE;
 gpio->chip.get = pcf857x_get;
 gpio->chip.set = pcf857x_set;
 gpio->chip.direction_input = pcf857x_input;
 gpio->chip.direction_output = pcf857x_output;
 gpio->chip.ngpio = id->driver_data;
 if (gpio->chip.ngpio == 8) {
  gpio->write = i2c_write_le8;
  gpio->read = i2c_read_le8;

  if (!i2c_check_functionality(client->adapter,
    I2C_FUNC_SMBUS_BYTE))
   status = -EIO;


  else
   status = i2c_smbus_read_byte(client);







 } else if (gpio->chip.ngpio == 16) {
  gpio->write = i2c_write_le16;
  gpio->read = i2c_read_le16;

  if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C))
   status = -EIO;


  else
   status = i2c_read_le16(client);

 } else {
  dev_dbg(&client->dev, "unsupported number of gpios\n");
  status = -EINVAL;
 }

 if (status < 0)
  goto fail;

 gpio->chip.label = client->name;

 gpio->client = client;
 i2c_set_clientdata(client, gpio);
 gpio->out = ~n_latch;
 gpio->status = gpio->out;

 status = devm_gpiochip_add_data(&client->dev, &gpio->chip, gpio);
 if (status < 0)
  goto fail;


 if (client->irq) {
  gpio->irqchip.name = "pcf857x",
  gpio->irqchip.irq_enable = pcf857x_irq_enable,
  gpio->irqchip.irq_disable = pcf857x_irq_disable,
  gpio->irqchip.irq_ack = noop,
  gpio->irqchip.irq_mask = noop,
  gpio->irqchip.irq_unmask = noop,
  gpio->irqchip.irq_set_wake = pcf857x_irq_set_wake,
  gpio->irqchip.irq_bus_lock = pcf857x_irq_bus_lock,
  gpio->irqchip.irq_bus_sync_unlock = pcf857x_irq_bus_sync_unlock,
  status = gpiochip_irqchip_add_nested(&gpio->chip,
           &gpio->irqchip,
           0, handle_level_irq,
           IRQ_TYPE_NONE);
  if (status) {
   dev_err(&client->dev, "cannot add irqchip\n");
   goto fail;
  }

  status = devm_request_threaded_irq(&client->dev, client->irq,
     ((void*)0), pcf857x_irq, IRQF_ONESHOT |
     IRQF_TRIGGER_FALLING | IRQF_SHARED,
     dev_name(&client->dev), gpio);
  if (status)
   goto fail;

  gpiochip_set_nested_irqchip(&gpio->chip, &gpio->irqchip,
         client->irq);
 }




 if (pdata && pdata->setup) {
  status = pdata->setup(client,
    gpio->chip.base, gpio->chip.ngpio,
    pdata->context);
  if (status < 0)
   dev_warn(&client->dev, "setup --> %d\n", status);
 }

 dev_info(&client->dev, "probed\n");

 return 0;

fail:
 dev_dbg(&client->dev, "probe error %d for '%s'\n", status,
  client->name);

 return status;
}
