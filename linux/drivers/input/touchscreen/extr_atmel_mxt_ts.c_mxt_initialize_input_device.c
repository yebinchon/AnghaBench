
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mxt_data {int multitouch; unsigned int num_touchids; int max_x; int max_y; struct input_dev* input_dev; scalar_t__ t100_aux_vect; scalar_t__ t100_aux_ampl; scalar_t__ t100_aux_area; scalar_t__ t19_num_keys; int phys; scalar_t__ xy_switch; scalar_t__ T9_reportid_min; scalar_t__ T9_reportid_max; TYPE_1__* client; } ;
struct TYPE_6__ {struct device* parent; } ;
struct TYPE_5__ {int bustype; } ;
struct input_dev {char* name; int close; int open; TYPE_3__ dev; TYPE_2__ id; int phys; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;


 int ABS_MT_DISTANCE ;
 int ABS_MT_ORIENTATION ;
 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_PRESSURE ;
 int ABS_MT_TOOL_TYPE ;
 int ABS_MT_TOUCH_MAJOR ;
 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int BUS_I2C ;
 int EINVAL ;
 int ENOMEM ;
 int EV_KEY ;
 unsigned int INPUT_MT_DIRECT ;
 unsigned int INPUT_MT_POINTER ;
 int MT_TOOL_MAX ;
 int MXT_DISTANCE_ACTIVE_TOUCH ;
 int MXT_DISTANCE_HOVERING ;
 int MXT_MAX_AREA ;


 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,int,int) ;
 int dev_warn (struct device*,char*) ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_mt_init_slots (struct input_dev*,unsigned int,unsigned int) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int,int ,int ) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int input_set_drvdata (struct input_dev*,struct mxt_data*) ;
 int mxt_input_close ;
 int mxt_input_open ;
 int mxt_read_t100_config (struct mxt_data*) ;
 int mxt_read_t9_resolution (struct mxt_data*) ;
 int mxt_set_up_as_touchpad (struct input_dev*,struct mxt_data*) ;
 int swap (int,int) ;

__attribute__((used)) static int mxt_initialize_input_device(struct mxt_data *data)
{
 struct device *dev = &data->client->dev;
 struct input_dev *input_dev;
 int error;
 unsigned int num_mt_slots;
 unsigned int mt_flags = 0;

 switch (data->multitouch) {
 case 128:
  num_mt_slots = data->T9_reportid_max - data->T9_reportid_min + 1;
  error = mxt_read_t9_resolution(data);
  if (error)
   dev_warn(dev, "Failed to initialize T9 resolution\n");
  break;

 case 129:
  num_mt_slots = data->num_touchids;
  error = mxt_read_t100_config(data);
  if (error)
   dev_warn(dev, "Failed to read T100 config\n");
  break;

 default:
  dev_err(dev, "Invalid multitouch object\n");
  return -EINVAL;
 }


 if (data->max_x == 0)
  data->max_x = 1023;

 if (data->max_y == 0)
  data->max_y = 1023;

 if (data->xy_switch)
  swap(data->max_x, data->max_y);

 dev_info(dev, "Touchscreen size X%uY%u\n", data->max_x, data->max_y);


 input_dev = input_allocate_device();
 if (!input_dev)
  return -ENOMEM;

 input_dev->name = "Atmel maXTouch Touchscreen";
 input_dev->phys = data->phys;
 input_dev->id.bustype = BUS_I2C;
 input_dev->dev.parent = dev;
 input_dev->open = mxt_input_open;
 input_dev->close = mxt_input_close;

 input_set_capability(input_dev, EV_KEY, BTN_TOUCH);


 input_set_abs_params(input_dev, ABS_X, 0, data->max_x, 0, 0);
 input_set_abs_params(input_dev, ABS_Y, 0, data->max_y, 0, 0);

 if (data->multitouch == 128 ||
     (data->multitouch == 129 &&
      data->t100_aux_ampl)) {
  input_set_abs_params(input_dev, ABS_PRESSURE, 0, 255, 0, 0);
 }


 if (data->t19_num_keys) {
  mxt_set_up_as_touchpad(input_dev, data);
  mt_flags |= INPUT_MT_POINTER;
 } else {
  mt_flags |= INPUT_MT_DIRECT;
 }


 error = input_mt_init_slots(input_dev, num_mt_slots, mt_flags);
 if (error) {
  dev_err(dev, "Error %d initialising slots\n", error);
  goto err_free_mem;
 }

 if (data->multitouch == 129) {
  input_set_abs_params(input_dev, ABS_MT_TOOL_TYPE,
         0, MT_TOOL_MAX, 0, 0);
  input_set_abs_params(input_dev, ABS_MT_DISTANCE,
         MXT_DISTANCE_ACTIVE_TOUCH,
         MXT_DISTANCE_HOVERING,
         0, 0);
 }

 input_set_abs_params(input_dev, ABS_MT_POSITION_X,
        0, data->max_x, 0, 0);
 input_set_abs_params(input_dev, ABS_MT_POSITION_Y,
        0, data->max_y, 0, 0);

 if (data->multitouch == 128 ||
     (data->multitouch == 129 &&
      data->t100_aux_area)) {
  input_set_abs_params(input_dev, ABS_MT_TOUCH_MAJOR,
         0, MXT_MAX_AREA, 0, 0);
 }

 if (data->multitouch == 128 ||
     (data->multitouch == 129 &&
      data->t100_aux_ampl)) {
  input_set_abs_params(input_dev, ABS_MT_PRESSURE,
         0, 255, 0, 0);
 }

 if (data->multitouch == 129 &&
     data->t100_aux_vect) {
  input_set_abs_params(input_dev, ABS_MT_ORIENTATION,
         0, 255, 0, 0);
 }

 if (data->multitouch == 129 &&
     data->t100_aux_vect) {
  input_set_abs_params(input_dev, ABS_MT_ORIENTATION,
         0, 255, 0, 0);
 }

 input_set_drvdata(input_dev, data);

 error = input_register_device(input_dev);
 if (error) {
  dev_err(dev, "Error %d registering input device\n", error);
  goto err_free_mem;
 }

 data->input_dev = input_dev;

 return 0;

err_free_mem:
 input_free_device(input_dev);
 return error;
}
