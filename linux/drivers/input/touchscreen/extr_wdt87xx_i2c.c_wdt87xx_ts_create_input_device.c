
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int max_x; int max_y; int product_id; int vendor_id; int phy_w; } ;
struct wdt87xx_data {TYPE_3__ param; int phys; struct input_dev* input; TYPE_1__* client; } ;
struct TYPE_5__ {int product; int vendor; int bustype; } ;
struct input_dev {char* name; int phys; TYPE_2__ id; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_PRESSURE ;
 int ABS_MT_TOUCH_MAJOR ;
 int BUS_I2C ;
 unsigned int DIV_ROUND_CLOSEST (int ,int ) ;
 int ENOMEM ;
 int INPUT_MT_DIRECT ;
 int INPUT_MT_DROP_UNUSED ;
 int MAX_UNIT_AXIS ;
 int WDT_MAX_FINGER ;
 int dev_err (struct device*,char*,...) ;
 struct input_dev* devm_input_allocate_device (struct device*) ;
 int input_abs_set_res (struct input_dev*,int ,unsigned int) ;
 int input_mt_init_slots (struct input_dev*,int ,int) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int,int ,int ) ;

__attribute__((used)) static int wdt87xx_ts_create_input_device(struct wdt87xx_data *wdt)
{
 struct device *dev = &wdt->client->dev;
 struct input_dev *input;
 unsigned int res = DIV_ROUND_CLOSEST(MAX_UNIT_AXIS, wdt->param.phy_w);
 int error;

 input = devm_input_allocate_device(dev);
 if (!input) {
  dev_err(dev, "failed to allocate input device\n");
  return -ENOMEM;
 }
 wdt->input = input;

 input->name = "WDT87xx Touchscreen";
 input->id.bustype = BUS_I2C;
 input->id.vendor = wdt->param.vendor_id;
 input->id.product = wdt->param.product_id;
 input->phys = wdt->phys;

 input_set_abs_params(input, ABS_MT_POSITION_X, 0,
        wdt->param.max_x, 0, 0);
 input_set_abs_params(input, ABS_MT_POSITION_Y, 0,
        wdt->param.max_y, 0, 0);
 input_abs_set_res(input, ABS_MT_POSITION_X, res);
 input_abs_set_res(input, ABS_MT_POSITION_Y, res);

 input_set_abs_params(input, ABS_MT_TOUCH_MAJOR,
        0, wdt->param.max_x, 0, 0);
 input_set_abs_params(input, ABS_MT_PRESSURE, 0, 0xFF, 0, 0);

 input_mt_init_slots(input, WDT_MAX_FINGER,
       INPUT_MT_DIRECT | INPUT_MT_DROP_UNUSED);

 error = input_register_device(input);
 if (error) {
  dev_err(dev, "failed to register input device: %d\n", error);
  return error;
 }

 return 0;
}
