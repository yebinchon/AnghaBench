
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct device* parent; } ;
struct TYPE_4__ {int version; scalar_t__ product; int bustype; } ;
struct input_dev {int propbit; int keybit; int evbit; int close; int open; TYPE_2__ dev; TYPE_1__ id; int phys; int name; } ;
struct device {int dummy; } ;
struct cyapa {int physical_size_x; int physical_size_y; int max_abs_x; int max_abs_y; int max_z; scalar_t__ gen; int btn_capability; struct input_dev* input; TYPE_3__* client; int phys; } ;
struct TYPE_6__ {struct device dev; } ;


 int ABS_DISTANCE ;
 int ABS_MT_ORIENTATION ;
 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_PRESSURE ;
 int ABS_MT_TOUCH_MAJOR ;
 int ABS_MT_TOUCH_MINOR ;
 int ABS_MT_WIDTH_MAJOR ;
 int ABS_MT_WIDTH_MINOR ;
 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int BUS_I2C ;
 int CAPABILITY_LEFT_BTN_MASK ;
 int CAPABILITY_MIDDLE_BTN_MASK ;
 int CAPABILITY_RIGHT_BTN_MASK ;
 scalar_t__ CYAPA_GEN3 ;
 scalar_t__ CYAPA_GEN5 ;
 int CYAPA_MAX_MT_SLOTS ;
 int CYAPA_NAME ;
 int EINVAL ;
 int ENOMEM ;
 int EV_ABS ;
 int INPUT_MT_DROP_UNUSED ;
 int INPUT_MT_POINTER ;
 int INPUT_PROP_BUTTONPAD ;
 int __set_bit (int ,int ) ;
 int cyapa_close ;
 int cyapa_open ;
 int dev_err (struct device*,char*,...) ;
 struct input_dev* devm_input_allocate_device (struct device*) ;
 int input_abs_set_res (struct input_dev*,int ,int) ;
 int input_mt_init_slots (struct input_dev*,int ,int) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int ,int,int,int ,int ) ;
 int input_set_drvdata (struct input_dev*,struct cyapa*) ;

__attribute__((used)) static int cyapa_create_input_dev(struct cyapa *cyapa)
{
 struct device *dev = &cyapa->client->dev;
 struct input_dev *input;
 int error;

 if (!cyapa->physical_size_x || !cyapa->physical_size_y)
  return -EINVAL;

 input = devm_input_allocate_device(dev);
 if (!input) {
  dev_err(dev, "failed to allocate memory for input device.\n");
  return -ENOMEM;
 }

 input->name = CYAPA_NAME;
 input->phys = cyapa->phys;
 input->id.bustype = BUS_I2C;
 input->id.version = 1;
 input->id.product = 0;
 input->dev.parent = &cyapa->client->dev;

 input->open = cyapa_open;
 input->close = cyapa_close;

 input_set_drvdata(input, cyapa);

 __set_bit(EV_ABS, input->evbit);


 input_set_abs_params(input, ABS_MT_POSITION_X, 0, cyapa->max_abs_x, 0,
        0);
 input_set_abs_params(input, ABS_MT_POSITION_Y, 0, cyapa->max_abs_y, 0,
        0);
 input_set_abs_params(input, ABS_MT_PRESSURE, 0, cyapa->max_z, 0, 0);
 if (cyapa->gen > CYAPA_GEN3) {
  input_set_abs_params(input, ABS_MT_TOUCH_MAJOR, 0, 255, 0, 0);
  input_set_abs_params(input, ABS_MT_TOUCH_MINOR, 0, 255, 0, 0);
  input_set_abs_params(input, ABS_MT_ORIENTATION,
    -127, 127, 0, 0);
 }
 if (cyapa->gen >= CYAPA_GEN5) {
  input_set_abs_params(input, ABS_MT_WIDTH_MAJOR, 0, 255, 0, 0);
  input_set_abs_params(input, ABS_MT_WIDTH_MINOR, 0, 255, 0, 0);
  input_set_abs_params(input, ABS_DISTANCE, 0, 1, 0, 0);
 }

 input_abs_set_res(input, ABS_MT_POSITION_X,
     cyapa->max_abs_x / cyapa->physical_size_x);
 input_abs_set_res(input, ABS_MT_POSITION_Y,
     cyapa->max_abs_y / cyapa->physical_size_y);

 if (cyapa->btn_capability & CAPABILITY_LEFT_BTN_MASK)
  __set_bit(BTN_LEFT, input->keybit);
 if (cyapa->btn_capability & CAPABILITY_MIDDLE_BTN_MASK)
  __set_bit(BTN_MIDDLE, input->keybit);
 if (cyapa->btn_capability & CAPABILITY_RIGHT_BTN_MASK)
  __set_bit(BTN_RIGHT, input->keybit);

 if (cyapa->btn_capability == CAPABILITY_LEFT_BTN_MASK)
  __set_bit(INPUT_PROP_BUTTONPAD, input->propbit);


 error = input_mt_init_slots(input, CYAPA_MAX_MT_SLOTS,
        INPUT_MT_POINTER | INPUT_MT_DROP_UNUSED);
 if (error) {
  dev_err(dev, "failed to initialize MT slots: %d\n", error);
  return error;
 }


 error = input_register_device(input);
 if (error) {
  dev_err(dev, "failed to register input device: %d\n", error);
  return error;
 }

 cyapa->input = input;
 return 0;
}
