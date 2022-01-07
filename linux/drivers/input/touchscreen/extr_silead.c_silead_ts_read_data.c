
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct silead_ts_data {int max_fingers; int* id; int * slots; TYPE_1__* pos; int prop; struct input_dev* input; } ;
struct input_dev {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
struct TYPE_3__ {int y; int x; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int KEY_LEFTMETA ;
 int MT_TOOL_FINGER ;
 int SILEAD_EXTRA_DATA_MASK ;
 int SILEAD_POINT_DATA_LEN ;
 size_t SILEAD_POINT_X_MSB_OFF ;
 size_t SILEAD_POINT_X_OFF ;
 size_t SILEAD_POINT_Y_MSB_OFF ;
 size_t SILEAD_POINT_Y_OFF ;
 int SILEAD_REG_DATA ;
 int SILEAD_TS_DATA_LEN ;
 int dev_dbg (struct device*,char*,int ,int ,int,int ) ;
 int dev_err (struct device*,char*,int) ;
 int dev_warn (struct device*,char*,int,int) ;
 int get_unaligned_le16 (int*) ;
 struct silead_ts_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_read_i2c_block_data (struct i2c_client*,int ,int,int*) ;
 int input_mt_assign_slots (struct input_dev*,int *,TYPE_1__*,int,int ) ;
 int input_mt_report_slot_state (struct input_dev*,int ,int) ;
 int input_mt_slot (struct input_dev*,int ) ;
 int input_mt_sync_frame (struct input_dev*) ;
 int input_report_abs (struct input_dev*,int ,int ) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int touchscreen_set_mt_pos (TYPE_1__*,int *,int,int) ;

__attribute__((used)) static void silead_ts_read_data(struct i2c_client *client)
{
 struct silead_ts_data *data = i2c_get_clientdata(client);
 struct input_dev *input = data->input;
 struct device *dev = &client->dev;
 u8 *bufp, buf[SILEAD_TS_DATA_LEN];
 int touch_nr, softbutton, error, i;
 bool softbutton_pressed = 0;

 error = i2c_smbus_read_i2c_block_data(client, SILEAD_REG_DATA,
           SILEAD_TS_DATA_LEN, buf);
 if (error < 0) {
  dev_err(dev, "Data read error %d\n", error);
  return;
 }

 if (buf[0] > data->max_fingers) {
  dev_warn(dev, "More touches reported then supported %d > %d\n",
    buf[0], data->max_fingers);
  buf[0] = data->max_fingers;
 }

 touch_nr = 0;
 bufp = buf + SILEAD_POINT_DATA_LEN;
 for (i = 0; i < buf[0]; i++, bufp += SILEAD_POINT_DATA_LEN) {
  softbutton = (bufp[SILEAD_POINT_Y_MSB_OFF] &
         SILEAD_EXTRA_DATA_MASK) >> 4;

  if (softbutton) {





   if (softbutton == 0x01)
    softbutton_pressed = 1;

   continue;
  }





  data->id[touch_nr] = (bufp[SILEAD_POINT_X_MSB_OFF] &
          SILEAD_EXTRA_DATA_MASK) >> 4;
  touchscreen_set_mt_pos(&data->pos[touch_nr], &data->prop,
   get_unaligned_le16(&bufp[SILEAD_POINT_X_OFF]) & 0xfff,
   get_unaligned_le16(&bufp[SILEAD_POINT_Y_OFF]) & 0xfff);
  touch_nr++;
 }

 input_mt_assign_slots(input, data->slots, data->pos, touch_nr, 0);

 for (i = 0; i < touch_nr; i++) {
  input_mt_slot(input, data->slots[i]);
  input_mt_report_slot_state(input, MT_TOOL_FINGER, 1);
  input_report_abs(input, ABS_MT_POSITION_X, data->pos[i].x);
  input_report_abs(input, ABS_MT_POSITION_Y, data->pos[i].y);

  dev_dbg(dev, "x=%d y=%d hw_id=%d sw_id=%d\n", data->pos[i].x,
   data->pos[i].y, data->id[i], data->slots[i]);
 }

 input_mt_sync_frame(input);
 input_report_key(input, KEY_LEFTMETA, softbutton_pressed);
 input_sync(input);
}
