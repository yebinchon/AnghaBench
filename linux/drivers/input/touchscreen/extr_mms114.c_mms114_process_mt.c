
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mms114_touch {int id; int type; int x_lo; int x_hi; int y_lo; int y_hi; int strength; int width; int pressed; } ;
struct mms114_data {int props; struct input_dev* input_dev; struct i2c_client* client; } ;
struct input_dev {int dummy; } ;
struct i2c_client {int dev; } ;


 int ABS_MT_PRESSURE ;
 int ABS_MT_TOUCH_MAJOR ;
 int MMS114_MAX_TOUCH ;
 int MMS114_TYPE_TOUCHSCREEN ;
 int MT_TOOL_FINGER ;
 int dev_dbg (int *,char*,unsigned int,int,int ,unsigned int,unsigned int,int ,int ) ;
 int dev_err (int *,char*,int) ;
 int input_mt_report_slot_state (struct input_dev*,int ,int ) ;
 int input_mt_slot (struct input_dev*,unsigned int) ;
 int input_report_abs (struct input_dev*,int ,int ) ;
 int touchscreen_report_pos (struct input_dev*,int *,unsigned int,unsigned int,int) ;

__attribute__((used)) static void mms114_process_mt(struct mms114_data *data, struct mms114_touch *touch)
{
 struct i2c_client *client = data->client;
 struct input_dev *input_dev = data->input_dev;
 unsigned int id;
 unsigned int x;
 unsigned int y;

 if (touch->id > MMS114_MAX_TOUCH) {
  dev_err(&client->dev, "Wrong touch id (%d)\n", touch->id);
  return;
 }

 if (touch->type != MMS114_TYPE_TOUCHSCREEN) {
  dev_err(&client->dev, "Wrong touch type (%d)\n", touch->type);
  return;
 }

 id = touch->id - 1;
 x = touch->x_lo | touch->x_hi << 8;
 y = touch->y_lo | touch->y_hi << 8;

 dev_dbg(&client->dev,
  "id: %d, type: %d, pressed: %d, x: %d, y: %d, width: %d, strength: %d\n",
  id, touch->type, touch->pressed,
  x, y, touch->width, touch->strength);

 input_mt_slot(input_dev, id);
 input_mt_report_slot_state(input_dev, MT_TOOL_FINGER, touch->pressed);

 if (touch->pressed) {
  touchscreen_report_pos(input_dev, &data->props, x, y, 1);
  input_report_abs(input_dev, ABS_MT_TOUCH_MAJOR, touch->width);
  input_report_abs(input_dev, ABS_MT_PRESSURE, touch->strength);
 }
}
