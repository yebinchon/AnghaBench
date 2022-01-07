
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct silead_ts_data {TYPE_3__* input; int max_fingers; int prop; TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_10__ {int bustype; } ;
struct TYPE_11__ {char* phys; TYPE_2__ id; int name; } ;
struct TYPE_9__ {struct device dev; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int BUS_I2C ;
 int ENOMEM ;
 int EV_KEY ;
 int INPUT_MT_DIRECT ;
 int INPUT_MT_DROP_UNUSED ;
 int INPUT_MT_TRACK ;
 int KEY_LEFTMETA ;
 int SILEAD_TS_NAME ;
 int dev_err (struct device*,char*,...) ;
 scalar_t__ device_property_read_bool (struct device*,char*) ;
 TYPE_3__* devm_input_allocate_device (struct device*) ;
 int input_mt_init_slots (TYPE_3__*,int ,int) ;
 int input_register_device (TYPE_3__*) ;
 int input_set_abs_params (TYPE_3__*,int ,int ,int,int ,int ) ;
 int input_set_capability (TYPE_3__*,int ,int ) ;
 int touchscreen_parse_properties (TYPE_3__*,int,int *) ;

__attribute__((used)) static int silead_ts_request_input_dev(struct silead_ts_data *data)
{
 struct device *dev = &data->client->dev;
 int error;

 data->input = devm_input_allocate_device(dev);
 if (!data->input) {
  dev_err(dev,
   "Failed to allocate input device\n");
  return -ENOMEM;
 }

 input_set_abs_params(data->input, ABS_MT_POSITION_X, 0, 4095, 0, 0);
 input_set_abs_params(data->input, ABS_MT_POSITION_Y, 0, 4095, 0, 0);
 touchscreen_parse_properties(data->input, 1, &data->prop);

 input_mt_init_slots(data->input, data->max_fingers,
       INPUT_MT_DIRECT | INPUT_MT_DROP_UNUSED |
       INPUT_MT_TRACK);

 if (device_property_read_bool(dev, "silead,home-button"))
  input_set_capability(data->input, EV_KEY, KEY_LEFTMETA);

 data->input->name = SILEAD_TS_NAME;
 data->input->phys = "input/ts";
 data->input->id.bustype = BUS_I2C;

 error = input_register_device(data->input);
 if (error) {
  dev_err(dev, "Failed to register input device: %d\n", error);
  return error;
 }

 return 0;
}
