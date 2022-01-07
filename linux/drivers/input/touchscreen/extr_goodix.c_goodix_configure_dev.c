
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int invert_x; int invert_y; scalar_t__ max_y; scalar_t__ max_x; } ;
struct goodix_ts_data {size_t int_trigger_type; int contact_size; int irq_flags; TYPE_2__* client; TYPE_3__* input_dev; void* max_touch_num; TYPE_4__ prop; int version; int id; } ;
struct TYPE_11__ {int vendor; int version; int product; int bustype; } ;
struct TYPE_13__ {char* name; char* phys; TYPE_1__ id; } ;
struct TYPE_12__ {int dev; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_TOUCH_MAJOR ;
 int ABS_MT_WIDTH_MAJOR ;
 int BUS_I2C ;
 int ENOMEM ;
 int EV_ABS ;
 int EV_KEY ;
 size_t GOODIX_INT_TRIGGER ;
 void* GOODIX_MAX_CONTACTS ;
 scalar_t__ GOODIX_MAX_HEIGHT ;
 scalar_t__ GOODIX_MAX_WIDTH ;
 int INPUT_MT_DIRECT ;
 int INPUT_MT_DROP_UNUSED ;
 int IRQF_ONESHOT ;
 int KEY_LEFTMETA ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,...) ;
 TYPE_3__* devm_input_allocate_device (int *) ;
 scalar_t__ dmi_check_system (int ) ;
 int* goodix_irq_flags ;
 int goodix_read_config (struct goodix_ts_data*) ;
 int goodix_request_irq (struct goodix_ts_data*) ;
 int input_abs_set_max (TYPE_3__*,int ,scalar_t__) ;
 int input_mt_init_slots (TYPE_3__*,void*,int) ;
 int input_register_device (TYPE_3__*) ;
 int input_set_abs_params (TYPE_3__*,int ,int ,int,int ,int ) ;
 int input_set_capability (TYPE_3__*,int ,int ) ;
 int nine_bytes_report ;
 int rotated_screen ;
 int touchscreen_parse_properties (TYPE_3__*,int,TYPE_4__*) ;

__attribute__((used)) static int goodix_configure_dev(struct goodix_ts_data *ts)
{
 int error;

 ts->int_trigger_type = GOODIX_INT_TRIGGER;
 ts->max_touch_num = GOODIX_MAX_CONTACTS;

 ts->input_dev = devm_input_allocate_device(&ts->client->dev);
 if (!ts->input_dev) {
  dev_err(&ts->client->dev, "Failed to allocate input device.");
  return -ENOMEM;
 }

 ts->input_dev->name = "Goodix Capacitive TouchScreen";
 ts->input_dev->phys = "input/ts";
 ts->input_dev->id.bustype = BUS_I2C;
 ts->input_dev->id.vendor = 0x0416;
 ts->input_dev->id.product = ts->id;
 ts->input_dev->id.version = ts->version;


 input_set_capability(ts->input_dev, EV_KEY, KEY_LEFTMETA);

 input_set_capability(ts->input_dev, EV_ABS, ABS_MT_POSITION_X);
 input_set_capability(ts->input_dev, EV_ABS, ABS_MT_POSITION_Y);
 input_set_abs_params(ts->input_dev, ABS_MT_WIDTH_MAJOR, 0, 255, 0, 0);
 input_set_abs_params(ts->input_dev, ABS_MT_TOUCH_MAJOR, 0, 255, 0, 0);


 goodix_read_config(ts);


 touchscreen_parse_properties(ts->input_dev, 1, &ts->prop);

 if (!ts->prop.max_x || !ts->prop.max_y || !ts->max_touch_num) {
  dev_err(&ts->client->dev,
   "Invalid config (%d, %d, %d), using defaults\n",
   ts->prop.max_x, ts->prop.max_y, ts->max_touch_num);
  ts->prop.max_x = GOODIX_MAX_WIDTH - 1;
  ts->prop.max_y = GOODIX_MAX_HEIGHT - 1;
  ts->max_touch_num = GOODIX_MAX_CONTACTS;
  input_abs_set_max(ts->input_dev,
      ABS_MT_POSITION_X, ts->prop.max_x);
  input_abs_set_max(ts->input_dev,
      ABS_MT_POSITION_Y, ts->prop.max_y);
 }

 if (dmi_check_system(rotated_screen)) {
  ts->prop.invert_x = 1;
  ts->prop.invert_y = 1;
  dev_dbg(&ts->client->dev,
   "Applying '180 degrees rotated screen' quirk\n");
 }

 if (dmi_check_system(nine_bytes_report)) {
  ts->contact_size = 9;

  dev_dbg(&ts->client->dev,
   "Non-standard 9-bytes report format quirk\n");
 }

 error = input_mt_init_slots(ts->input_dev, ts->max_touch_num,
        INPUT_MT_DIRECT | INPUT_MT_DROP_UNUSED);
 if (error) {
  dev_err(&ts->client->dev,
   "Failed to initialize MT slots: %d", error);
  return error;
 }

 error = input_register_device(ts->input_dev);
 if (error) {
  dev_err(&ts->client->dev,
   "Failed to register input device: %d", error);
  return error;
 }

 ts->irq_flags = goodix_irq_flags[ts->int_trigger_type] | IRQF_ONESHOT;
 error = goodix_request_irq(ts);
 if (error) {
  dev_err(&ts->client->dev, "request IRQ failed: %d\n", error);
  return error;
 }

 return 0;
}
