
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qt2160_data {struct input_dev* input; int * keycodes; int dwork; struct i2c_client* client; } ;
struct TYPE_3__ {int bustype; } ;
struct input_dev {char* name; int keycodesize; int keycodemax; int keybit; int evbit; int * keycode; TYPE_1__ id; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {scalar_t__ irq; int dev; TYPE_2__* adapter; } ;
struct TYPE_4__ {int dev; } ;


 int ARRAY_SIZE (int *) ;
 int BUS_I2C ;
 int ENODEV ;
 int ENOMEM ;
 int EV_KEY ;
 int EV_REP ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int IRQF_TRIGGER_FALLING ;
 int KEY_RESERVED ;
 int QT2160_CMD_CALIBRATE ;
 int __clear_bit (int ,int ) ;
 int __set_bit (int ,int ) ;
 int dev_driver_string (int *) ;
 int dev_err (int *,char*,...) ;
 int free_irq (scalar_t__,struct qt2160_data*) ;
 int i2c_check_functionality (TYPE_2__*,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct qt2160_data*) ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int kfree (struct qt2160_data*) ;
 struct qt2160_data* kzalloc (int,int ) ;
 int qt2160_identify (struct i2c_client*) ;
 int qt2160_irq ;
 int * qt2160_key2code ;
 int qt2160_register_leds (struct qt2160_data*) ;
 int qt2160_schedule_read (struct qt2160_data*) ;
 int qt2160_unregister_leds (struct qt2160_data*) ;
 int qt2160_worker ;
 int qt2160_write (struct i2c_client*,int ,int) ;
 int request_irq (scalar_t__,int ,int ,char*,struct qt2160_data*) ;

__attribute__((used)) static int qt2160_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct qt2160_data *qt2160;
 struct input_dev *input;
 int i;
 int error;


 error = i2c_check_functionality(client->adapter,
   I2C_FUNC_SMBUS_BYTE);
 if (!error) {
  dev_err(&client->dev, "%s adapter not supported\n",
    dev_driver_string(&client->adapter->dev));
  return -ENODEV;
 }

 if (!qt2160_identify(client))
  return -ENODEV;


 qt2160 = kzalloc(sizeof(struct qt2160_data), GFP_KERNEL);
 input = input_allocate_device();
 if (!qt2160 || !input) {
  dev_err(&client->dev, "insufficient memory\n");
  error = -ENOMEM;
  goto err_free_mem;
 }

 qt2160->client = client;
 qt2160->input = input;
 INIT_DELAYED_WORK(&qt2160->dwork, qt2160_worker);

 input->name = "AT42QT2160 Touch Sense Keyboard";
 input->id.bustype = BUS_I2C;

 input->keycode = qt2160->keycodes;
 input->keycodesize = sizeof(qt2160->keycodes[0]);
 input->keycodemax = ARRAY_SIZE(qt2160_key2code);

 __set_bit(EV_KEY, input->evbit);
 __clear_bit(EV_REP, input->evbit);
 for (i = 0; i < ARRAY_SIZE(qt2160_key2code); i++) {
  qt2160->keycodes[i] = qt2160_key2code[i];
  __set_bit(qt2160_key2code[i], input->keybit);
 }
 __clear_bit(KEY_RESERVED, input->keybit);


 error = qt2160_write(client, QT2160_CMD_CALIBRATE, 1);
 if (error) {
  dev_err(&client->dev, "failed to calibrate device\n");
  goto err_free_mem;
 }

 if (client->irq) {
  error = request_irq(client->irq, qt2160_irq,
        IRQF_TRIGGER_FALLING, "qt2160", qt2160);
  if (error) {
   dev_err(&client->dev,
    "failed to allocate irq %d\n", client->irq);
   goto err_free_mem;
  }
 }

 error = qt2160_register_leds(qt2160);
 if (error) {
  dev_err(&client->dev, "Failed to register leds\n");
  goto err_free_irq;
 }

 error = input_register_device(qt2160->input);
 if (error) {
  dev_err(&client->dev,
   "Failed to register input device\n");
  goto err_unregister_leds;
 }

 i2c_set_clientdata(client, qt2160);
 qt2160_schedule_read(qt2160);

 return 0;

err_unregister_leds:
 qt2160_unregister_leds(qt2160);
err_free_irq:
 if (client->irq)
  free_irq(client->irq, qt2160);
err_free_mem:
 input_free_device(input);
 kfree(qt2160);
 return error;
}
