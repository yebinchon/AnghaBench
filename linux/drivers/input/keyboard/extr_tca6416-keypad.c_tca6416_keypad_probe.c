
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tca6416_keys_platform_data {int nbuttons; scalar_t__ irq_is_gpio; TYPE_3__* buttons; scalar_t__ rep; int use_polling; int pinmask; } ;
struct tca6416_keypad_chip {int irqnum; int use_polling; TYPE_3__* buttons; int dwork; int pinmask; int io_size; struct input_dev* input; struct i2c_client* client; } ;
struct TYPE_6__ {int vendor; int product; int version; int bustype; } ;
struct TYPE_5__ {int * parent; } ;
struct input_dev {char* phys; int evbit; TYPE_2__ id; int close; int open; TYPE_1__ dev; int name; } ;
struct i2c_device_id {int driver_data; } ;
struct i2c_client {int dev; int irq; int name; TYPE_4__* adapter; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_7__ {int type; int code; } ;


 int BUS_HOST ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 unsigned int EV_KEY ;
 int EV_REP ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 int __set_bit (int ,int ) ;
 int buttons ;
 int dev_dbg (int *,char*,...) ;
 int dev_driver_string (int *) ;
 int dev_err (int *,char*,int ) ;
 struct tca6416_keys_platform_data* dev_get_platdata (int *) ;
 int device_init_wakeup (int *,int) ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int free_irq (int ,struct tca6416_keypad_chip*) ;
 int gpio_to_irq (int ) ;
 int i2c_check_functionality (TYPE_4__*,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct tca6416_keypad_chip*) ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_capability (struct input_dev*,unsigned int,int ) ;
 int input_set_drvdata (struct input_dev*,struct tca6416_keypad_chip*) ;
 int kfree (struct tca6416_keypad_chip*) ;
 struct tca6416_keypad_chip* kzalloc (int ,int ) ;
 int request_threaded_irq (int ,int *,int ,int,char*,struct tca6416_keypad_chip*) ;
 int struct_size (struct tca6416_keypad_chip*,int ,int) ;
 int tca6416_keys_close ;
 int tca6416_keys_isr ;
 int tca6416_keys_open ;
 int tca6416_keys_work_func ;
 int tca6416_setup_registers (struct tca6416_keypad_chip*) ;

__attribute__((used)) static int tca6416_keypad_probe(struct i2c_client *client,
       const struct i2c_device_id *id)
{
 struct tca6416_keys_platform_data *pdata;
 struct tca6416_keypad_chip *chip;
 struct input_dev *input;
 int error;
 int i;


 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE)) {
  dev_err(&client->dev, "%s adapter not supported\n",
   dev_driver_string(&client->adapter->dev));
  return -ENODEV;
 }

 pdata = dev_get_platdata(&client->dev);
 if (!pdata) {
  dev_dbg(&client->dev, "no platform data\n");
  return -EINVAL;
 }

 chip = kzalloc(struct_size(chip, buttons, pdata->nbuttons), GFP_KERNEL);
 input = input_allocate_device();
 if (!chip || !input) {
  error = -ENOMEM;
  goto fail1;
 }

 chip->client = client;
 chip->input = input;
 chip->io_size = id->driver_data;
 chip->pinmask = pdata->pinmask;
 chip->use_polling = pdata->use_polling;

 INIT_DELAYED_WORK(&chip->dwork, tca6416_keys_work_func);

 input->phys = "tca6416-keys/input0";
 input->name = client->name;
 input->dev.parent = &client->dev;

 input->open = tca6416_keys_open;
 input->close = tca6416_keys_close;

 input->id.bustype = BUS_HOST;
 input->id.vendor = 0x0001;
 input->id.product = 0x0001;
 input->id.version = 0x0100;


 if (pdata->rep)
  __set_bit(EV_REP, input->evbit);

 for (i = 0; i < pdata->nbuttons; i++) {
  unsigned int type;

  chip->buttons[i] = pdata->buttons[i];
  type = (pdata->buttons[i].type) ?: EV_KEY;
  input_set_capability(input, type, pdata->buttons[i].code);
 }

 input_set_drvdata(input, chip);





 error = tca6416_setup_registers(chip);
 if (error)
  goto fail1;

 if (!chip->use_polling) {
  if (pdata->irq_is_gpio)
   chip->irqnum = gpio_to_irq(client->irq);
  else
   chip->irqnum = client->irq;

  error = request_threaded_irq(chip->irqnum, ((void*)0),
          tca6416_keys_isr,
          IRQF_TRIGGER_FALLING |
      IRQF_ONESHOT,
          "tca6416-keypad", chip);
  if (error) {
   dev_dbg(&client->dev,
    "Unable to claim irq %d; error %d\n",
    chip->irqnum, error);
   goto fail1;
  }
  disable_irq(chip->irqnum);
 }

 error = input_register_device(input);
 if (error) {
  dev_dbg(&client->dev,
   "Unable to register input device, error: %d\n", error);
  goto fail2;
 }

 i2c_set_clientdata(client, chip);
 device_init_wakeup(&client->dev, 1);

 return 0;

fail2:
 if (!chip->use_polling) {
  free_irq(chip->irqnum, chip);
  enable_irq(chip->irqnum);
 }
fail1:
 input_free_device(input);
 kfree(chip);
 return error;
}
