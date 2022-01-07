
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct touchscreen_properties {int max_x; int max_y; scalar_t__ swap_x_y; scalar_t__ invert_y; scalar_t__ invert_x; } ;
struct iqs5xx_private {struct input_dev* input; } ;
struct TYPE_2__ {int bustype; } ;
struct input_dev {int close; int open; TYPE_1__ id; int name; } ;
struct i2c_client {int dev; int name; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_PRESSURE ;
 int BUS_I2C ;
 int EINVAL ;
 int ENOMEM ;
 int EV_ABS ;
 int INPUT_MT_DIRECT ;
 int IQS5XX_FLIP_X ;
 int IQS5XX_FLIP_Y ;
 int IQS5XX_NUM_CONTACTS ;
 int IQS5XX_NUM_POINTS ;
 int IQS5XX_SWITCH_XY_AXIS ;
 int IQS5XX_TOTAL_RX ;
 int IQS5XX_TOTAL_TX ;
 int IQS5XX_XY_CFG0 ;
 int IQS5XX_X_RES ;
 int IQS5XX_Y_RES ;
 int dev_err (int *,char*,int,...) ;
 struct input_dev* devm_input_allocate_device (int *) ;
 struct iqs5xx_private* i2c_get_clientdata (struct i2c_client*) ;
 int input_abs_set_max (struct input_dev*,int ,int) ;
 int input_mt_init_slots (struct input_dev*,int ,int ) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int input_set_drvdata (struct input_dev*,struct iqs5xx_private*) ;
 int iqs5xx_close ;
 int iqs5xx_open ;
 int iqs5xx_read_byte (struct i2c_client*,int ,int*) ;
 int iqs5xx_read_word (struct i2c_client*,int ,int*) ;
 int iqs5xx_write_byte (struct i2c_client*,int ,int) ;
 int iqs5xx_write_word (struct i2c_client*,int ,int) ;
 int swap (int,int) ;
 int touchscreen_parse_properties (struct input_dev*,int,struct touchscreen_properties*) ;

__attribute__((used)) static int iqs5xx_axis_init(struct i2c_client *client)
{
 struct iqs5xx_private *iqs5xx = i2c_get_clientdata(client);
 struct touchscreen_properties prop;
 struct input_dev *input;
 int error;
 u16 max_x, max_x_hw;
 u16 max_y, max_y_hw;
 u8 val;

 if (!iqs5xx->input) {
  input = devm_input_allocate_device(&client->dev);
  if (!input)
   return -ENOMEM;

  input->name = client->name;
  input->id.bustype = BUS_I2C;
  input->open = iqs5xx_open;
  input->close = iqs5xx_close;

  input_set_capability(input, EV_ABS, ABS_MT_POSITION_X);
  input_set_capability(input, EV_ABS, ABS_MT_POSITION_Y);
  input_set_capability(input, EV_ABS, ABS_MT_PRESSURE);

  input_set_drvdata(input, iqs5xx);
  iqs5xx->input = input;
 }

 touchscreen_parse_properties(iqs5xx->input, 1, &prop);

 error = iqs5xx_read_byte(client, IQS5XX_TOTAL_RX, &val);
 if (error)
  return error;
 max_x_hw = (val - 1) * IQS5XX_NUM_POINTS;

 error = iqs5xx_read_byte(client, IQS5XX_TOTAL_TX, &val);
 if (error)
  return error;
 max_y_hw = (val - 1) * IQS5XX_NUM_POINTS;

 error = iqs5xx_read_byte(client, IQS5XX_XY_CFG0, &val);
 if (error)
  return error;

 if (val & IQS5XX_SWITCH_XY_AXIS)
  swap(max_x_hw, max_y_hw);

 if (prop.swap_x_y)
  val ^= IQS5XX_SWITCH_XY_AXIS;

 if (prop.invert_x)
  val ^= prop.swap_x_y ? IQS5XX_FLIP_Y : IQS5XX_FLIP_X;

 if (prop.invert_y)
  val ^= prop.swap_x_y ? IQS5XX_FLIP_X : IQS5XX_FLIP_Y;

 error = iqs5xx_write_byte(client, IQS5XX_XY_CFG0, val);
 if (error)
  return error;

 if (prop.max_x > max_x_hw) {
  dev_err(&client->dev, "Invalid maximum x-coordinate: %u > %u\n",
   prop.max_x, max_x_hw);
  return -EINVAL;
 } else if (prop.max_x == 0) {
  error = iqs5xx_read_word(client, IQS5XX_X_RES, &max_x);
  if (error)
   return error;

  input_abs_set_max(iqs5xx->input,
      prop.swap_x_y ? ABS_MT_POSITION_Y :
        ABS_MT_POSITION_X,
      max_x);
 } else {
  max_x = (u16)prop.max_x;
 }

 if (prop.max_y > max_y_hw) {
  dev_err(&client->dev, "Invalid maximum y-coordinate: %u > %u\n",
   prop.max_y, max_y_hw);
  return -EINVAL;
 } else if (prop.max_y == 0) {
  error = iqs5xx_read_word(client, IQS5XX_Y_RES, &max_y);
  if (error)
   return error;

  input_abs_set_max(iqs5xx->input,
      prop.swap_x_y ? ABS_MT_POSITION_X :
        ABS_MT_POSITION_Y,
      max_y);
 } else {
  max_y = (u16)prop.max_y;
 }






 error = iqs5xx_write_word(client,
      prop.swap_x_y ? IQS5XX_Y_RES : IQS5XX_X_RES,
      max_x);
 if (error)
  return error;

 error = iqs5xx_write_word(client,
      prop.swap_x_y ? IQS5XX_X_RES : IQS5XX_Y_RES,
      max_y);
 if (error)
  return error;

 error = input_mt_init_slots(iqs5xx->input, IQS5XX_NUM_CONTACTS,
        INPUT_MT_DIRECT);
 if (error)
  dev_err(&client->dev, "Failed to initialize slots: %d\n",
   error);

 return error;
}
