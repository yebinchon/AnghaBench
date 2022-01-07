
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bustype; } ;
struct input_dev {char* name; TYPE_1__ id; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int name; int irq; int dev; } ;
struct exc3000_data {int prop; struct input_dev* input; int timer; struct i2c_client* client; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int BUS_I2C ;
 int ENOMEM ;
 int EXC3000_NUM_SLOTS ;
 int GFP_KERNEL ;
 int INPUT_MT_DIRECT ;
 int INPUT_MT_DROP_UNUSED ;
 int IRQF_ONESHOT ;
 struct input_dev* devm_input_allocate_device (int *) ;
 struct exc3000_data* devm_kzalloc (int *,int,int ) ;
 int devm_request_threaded_irq (int *,int ,int *,int ,int ,int ,struct exc3000_data*) ;
 int exc3000_interrupt ;
 int exc3000_timer ;
 int input_mt_init_slots (struct input_dev*,int ,int) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int,int ,int ) ;
 int timer_setup (int *,int ,int ) ;
 int touchscreen_parse_properties (struct input_dev*,int,int *) ;

__attribute__((used)) static int exc3000_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct exc3000_data *data;
 struct input_dev *input;
 int error;

 data = devm_kzalloc(&client->dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->client = client;
 timer_setup(&data->timer, exc3000_timer, 0);

 input = devm_input_allocate_device(&client->dev);
 if (!input)
  return -ENOMEM;

 data->input = input;

 input->name = "EETI EXC3000 Touch Screen";
 input->id.bustype = BUS_I2C;

 input_set_abs_params(input, ABS_MT_POSITION_X, 0, 4095, 0, 0);
 input_set_abs_params(input, ABS_MT_POSITION_Y, 0, 4095, 0, 0);
 touchscreen_parse_properties(input, 1, &data->prop);

 error = input_mt_init_slots(input, EXC3000_NUM_SLOTS,
        INPUT_MT_DIRECT | INPUT_MT_DROP_UNUSED);
 if (error)
  return error;

 error = input_register_device(input);
 if (error)
  return error;

 error = devm_request_threaded_irq(&client->dev, client->irq,
       ((void*)0), exc3000_interrupt, IRQF_ONESHOT,
       client->name, data);
 if (error)
  return error;

 return 0;
}
