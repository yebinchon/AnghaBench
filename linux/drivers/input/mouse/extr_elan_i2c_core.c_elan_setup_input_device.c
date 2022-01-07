
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int product; int vendor; int bustype; } ;
struct input_dev {char* name; int keybit; int propbit; int evbit; TYPE_2__ id; } ;
struct elan_tp_data {unsigned int max_x; unsigned int max_y; struct input_dev* input; int y_res; int x_res; scalar_t__ middle_button; scalar_t__ clickpad; int product_id; int width_y; int width_x; TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;


 int ABS_DISTANCE ;
 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_PRESSURE ;
 int ABS_MT_TOUCH_MAJOR ;
 int ABS_MT_TOUCH_MINOR ;
 int ABS_PRESSURE ;
 int ABS_TOOL_WIDTH ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int BUS_I2C ;
 int ELAN_VENDOR_ID ;
 int ENOMEM ;
 unsigned int ETP_FINGER_WIDTH ;
 int ETP_MAX_FINGERS ;
 unsigned int ETP_MAX_PRESSURE ;
 int EV_ABS ;
 int INPUT_MT_DROP_UNUSED ;
 int INPUT_MT_POINTER ;
 int INPUT_PROP_BUTTONPAD ;
 int INPUT_PROP_POINTER ;
 int __set_bit (int ,int ) ;
 int dev_err (struct device*,char*,int) ;
 struct input_dev* devm_input_allocate_device (struct device*) ;
 int input_abs_set_res (struct input_dev*,int ,int ) ;
 int input_mt_init_slots (struct input_dev*,int ,int) ;
 int input_set_abs_params (struct input_dev*,int ,int ,unsigned int,int ,int ) ;
 int input_set_drvdata (struct input_dev*,struct elan_tp_data*) ;
 unsigned int max (int ,int ) ;
 unsigned int min (int ,int ) ;

__attribute__((used)) static int elan_setup_input_device(struct elan_tp_data *data)
{
 struct device *dev = &data->client->dev;
 struct input_dev *input;
 unsigned int max_width = max(data->width_x, data->width_y);
 unsigned int min_width = min(data->width_x, data->width_y);
 int error;

 input = devm_input_allocate_device(dev);
 if (!input)
  return -ENOMEM;

 input->name = "Elan Touchpad";
 input->id.bustype = BUS_I2C;
 input->id.vendor = ELAN_VENDOR_ID;
 input->id.product = data->product_id;
 input_set_drvdata(input, data);

 error = input_mt_init_slots(input, ETP_MAX_FINGERS,
        INPUT_MT_POINTER | INPUT_MT_DROP_UNUSED);
 if (error) {
  dev_err(dev, "failed to initialize MT slots: %d\n", error);
  return error;
 }

 __set_bit(EV_ABS, input->evbit);
 __set_bit(INPUT_PROP_POINTER, input->propbit);
 if (data->clickpad) {
  __set_bit(INPUT_PROP_BUTTONPAD, input->propbit);
 } else {
  __set_bit(BTN_RIGHT, input->keybit);
  if (data->middle_button)
   __set_bit(BTN_MIDDLE, input->keybit);
 }
 __set_bit(BTN_LEFT, input->keybit);


 input_set_abs_params(input, ABS_X, 0, data->max_x, 0, 0);
 input_set_abs_params(input, ABS_Y, 0, data->max_y, 0, 0);
 input_abs_set_res(input, ABS_X, data->x_res);
 input_abs_set_res(input, ABS_Y, data->y_res);
 input_set_abs_params(input, ABS_PRESSURE, 0, ETP_MAX_PRESSURE, 0, 0);
 input_set_abs_params(input, ABS_TOOL_WIDTH, 0, ETP_FINGER_WIDTH, 0, 0);
 input_set_abs_params(input, ABS_DISTANCE, 0, 1, 0, 0);


 input_set_abs_params(input, ABS_MT_POSITION_X, 0, data->max_x, 0, 0);
 input_set_abs_params(input, ABS_MT_POSITION_Y, 0, data->max_y, 0, 0);
 input_abs_set_res(input, ABS_MT_POSITION_X, data->x_res);
 input_abs_set_res(input, ABS_MT_POSITION_Y, data->y_res);
 input_set_abs_params(input, ABS_MT_PRESSURE, 0,
        ETP_MAX_PRESSURE, 0, 0);
 input_set_abs_params(input, ABS_MT_TOUCH_MAJOR, 0,
        ETP_FINGER_WIDTH * max_width, 0, 0);
 input_set_abs_params(input, ABS_MT_TOUCH_MINOR, 0,
        ETP_FINGER_WIDTH * min_width, 0, 0);

 data->input = input;

 return 0;
}
